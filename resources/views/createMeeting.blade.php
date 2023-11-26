<!DOCTYPE html>
<html>

<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Video Streams</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <link rel='stylesheet' type='text/css' media='screen' href="{{ asset('agoraVideo/main.css') }}">
    <link rel="shortcut icon" href="{{ asset('agoraVideo/video-session.png')}}" rel="apple-touch-icon">
    <link rel="stylesheet" href="{{asset('assets/frontend/css/font-awesome.min.css')}}" rel="stylesheet" type="text/css" />


<body >
    <input type="text" class="linkUrl" id="linkUrl" value="" placeholder="Enter Link">

    <button class="join-btn" id="join-btn1" onclick="joinUserMeeting()">Join Meeting</button>

    @if(Auth::User())
        <a href="{{url('createMeeting')}}"><button class="join-btn" id="join-btn2">create Meeting</button></a>
    @endif

</body>
<!-- <script src="https://download.agora.io/sdk/release/AgoraRTC_N.js"></script> -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"crossorigin="anonymous"></script>

<script>
    function joinUserMeeting()
    {
        var link  = $('#linkUrl').val();
        if(link.trim() == '' || link.length < 1){
            alert('PLease enter the link');
            return;
        }else{
            window.location.href = link;
        }
    }
</script>

</html>