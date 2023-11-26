<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>video Stream</title>
    <link rel='stylesheet' type='text/css' media='screen' href="{{ asset('agoraVideo/main.css') }}">
    <link rel="shortcut icon" href="{{ asset('agoraVideo/video-session.png')}}" rel="apple-touch-icon">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"  crossorigin="anonymous"></script>

</head>
<body>
  @if(!session()->has('meeting'))
      <input type="text" class="linkUrl" id="linkname" placeholder="Enter your name" value="">
  @endif
    <input type="text" class="linkUrl" id="linkUrl" value="{{url('joinMeeting')}}/{{$meeting->url}}">

    <button class="join-btn" id="join-btn" style="display: none;"></button>
    <button class="join-btn" id="join-btn2" >Join Stream</button>
    <button class="join-btn" id="join-btns" onclick="copyLink()">Copy link</button>


    <!-- Meeting Instance -->
    <div id="stream-wrapper" style="height: 100%; display:block">
        <div id="video-streams"></div>

        <div id="stream-controls">
            <button id="leave-btn">Leave Stream</button>
            <button id="mic-btn">Mic On</button>
            <button id="camera-btn">Camera on</button>
            <!-- <button id="rec-btn">Rec off</button> -->
        </div>
    </div>
    <input id="appid" type="hidden" value="{{$meeting->app_id}}" readonly>
    <input id="token" type="hidden" value="{{$meeting->token}}" readonly>
    <input id="channel" type="hidden" value="{{$meeting->channel}}" readonly>
    <input id="urlId" type="hidden" value="{{$meeting->url}}" readonly>
    <input id="event" type="hidden" value="{{$event}}" readonly>

    <!-- <input id="timer" type="hidden" value="0"> -->
    <input id="user_meeting" type="hidden" value="0">
    <input id="user_permission" type="hidden" value="0">

</body>
<script src="{{asset('agoraVideo/AgoraRTC_N-4.7.3.js')}}" ></script>
<script src="{{asset('agoraVideo/main.js')}}" ></script>
<script src="https://js.pusher.com/7.2/pusher.min.js"></script>

  <script>
    // Pusher web socket initialise
    var notificationChannel = $('#channel').val();
    var notificationEvent =    $('#event').val();
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = true;

    var pusher = new Pusher('App-Key', {
      cluster: 'ap2'
    });

    var channel = pusher.subscribe(notificationChannel);
    channel.bind(notificationEvent, function(data) {
      @if(session()->has('meeting'))
       // Host User
        if(confirm(data.data.title)){
          meetingApprove(data.data.random_user , 2);
        }else{
          meetingApprove(data.data.random_user , 3);
        }
      @else
       // Join User
        if(data.data.status == 2){
          // Meeting start
          $('#join-btn').click();
          document.getElementById('stream-controls').style.display='flex';
        }else if(data.data.status == 3){
          // Meeting entry denied by host
          alert('Host has been deneid your entry');
        }
      @endif
    });
  </script>

  <script>

    function copyLink()
    {
      var urlPage = window.location.href;
      var temp = $("<input>");
      $("body").append(temp);
      temp.val(urlPage).select();
      document.execCommand("copy");
      temp.remove();
      $('#join-btns').text('Url Copied');
    }


  $('#join-btn2').click(function(){
    // Host User
      @if(session()->has('meeting'))
      $('#join-btn').click();
      document.getElementById('stream-controls').style.display='flex';
      var joinBtns = document.getElementsByClassName('join-btn');
      for (var i = 0; i < joinBtns.length; i++) {
          joinBtns[i].style.zIndex = '-1';
      }
      document.getElementById('linkUrl').style.zIndex = '-1';
      @else
      // Join User
      var name = $('#linkname').val();
      if(name == '' || length.name <1){
        alert("Enter your name");
        return;
      }else{
        saveUserName(name);
        alert('Request has been sent to Host please wait');
      }
      @endif
  })

   $('#leave-btn').click(function(){
      var joinBtns = document.getElementsByClassName("join-btn");
      for (var i = 0; i < joinBtns.length; i++) {
          joinBtns[i].style.zIndex = "";
      }
      document.getElementById('linkUrl').style.zIndex = '';
      document.getElementById('join-btn').style.display = 'none';
   })

  function saveUserName(name){
    var url = "{{url('saveUserName')}}"
    var random = "{{session()->get('random_user')}}" ;
    var urlId = $('#urlId').val();
    $.ajax({
      url : url,
      headers:{
        'X-CSRF-TOKEN':'{{csrf_token()}}'
      },
      data:{
        'url' : urlId,
        'name':name,
        'random':random
      },
      type:'post',
      success:function (result){

      }
    })
  }

  function meetingApprove(random_user ,type)
  {
    var url = "{{url('meetingApprove')}}"
    var urlId = $('#urlId').val();
    $.ajax({
      url : url,
      headers:{
        'X-CSRF-TOKEN':'{{csrf_token()}}'
      },
      data:{
        'url' : urlId,
        'type':type,
        'random':random_user
      },
      type:'post',
      success:function (result){

      }
    })
  }
  </script>
</html>