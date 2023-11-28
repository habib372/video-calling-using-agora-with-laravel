<?php

namespace App\Http\Controllers;

use App\Events\sendNotification;
use App\Models\MeetingEntry;
use App\Models\User;
use App\Models\UserMeeting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class MeetingController extends Controller
{
    public function meetingUser()
    {
        return view('createMeeting');
    }

    public function createMeeting()
    {
        // **for creating new agora project**
        // $meeting = Auth::User()->getUserMeetingInfo()->first();

        // if(!isset($meeting->id)){
        //     $name       =   'agora'. rand(1111,9999);
        //     $meetingData = createAgoraProject($name);
        //     if(isset($meetingData->project->id)){
        //         $meeting            =    new UserMeeting();
        //         $meeting->user_id   =   Auth::User()->id;
        //         $meeting->app_id    =   $meetingData->project->vendor_key;
        //         $meeting->appCertificate   =   $meetingData->project->sign_key;
        //         $meeting->channel   =    $meetingData->project->name;
        //         $meeting->uid       =   rand(11111,99999);
        //         $meeting->save();

        //     }else{
        //         echo"Project not created";
        //     }
        // }

        $meeting    =   UserMeeting::where('user_id', 1)->first();
        $token      =   createToken($meeting->app_id, $meeting->appCertificate, $meeting->channel);
        $meeting->token = $token;
        $meeting->url = generateRandomString();
        $meeting->event = generateRandomString(5);
        $meeting->save();

        // Meeting HOst
        if (Auth::user() && $meeting->user_id == 1) {
            Session::put('meeting', $meeting->url);
        }
        return redirect('joinMeeting/' . $meeting->url);
    }

    public function joinMeeting($url = '')
    {
        $meeting = UserMeeting::where('url', $url)->first();

        if (isset($meeting->id)) {
            // Meeting exist
            $meeting->app_id = trim($meeting->app_id);
            $meeting->appCertificate = trim($meeting->appCertificate);
            $meeting->channel = trim($meeting->channel);
            $meeting->token = trim($meeting->token);

            if (Auth::user() && $meeting->user_id == 1) {
                // meeting create
                $channel =  $meeting->channel;
                $event   = $meeting->event;
            } else {
                if (!Auth::user()) {
                    $random_user = rand(111111, 999999);
                    Session::put('random_user', $random_user);
                    $event = generateRandomString(5);

                    $this->createEntry($meeting->user_id, $random_user, $meeting->url, $event, $meeting->channel);
                    $channel =  $meeting->channel;
                } else {
                    $event = generateRandomString(5);
                    $this->createEntry($meeting->user_id, Auth::User()->id, $meeting->url, $event, $meeting->channel);
                    $channel =  $meeting->channel;
                    Session::put('random_user', Auth::user()->id);
                }
            }
            // prx(get_defined_vars());
            return view('joinUser', get_defined_vars());
        } else {
            // meeting not exist

        }
    }

    public function createEntry($user_id, $random_user, $url, $event, $channel)

    {
        $entry = new MeetingEntry();
        $entry->user_id = $user_id;
        $entry->random_user = $random_user;
        $entry->url = $url;
        $entry->status = 0;
        $entry->channel = $channel;
        $entry->event = $event;
        $entry->save();
    }

    public function saveUserName(Request $request)
    {
        $saveName = MeetingEntry::where(['random_user' => $request->random, 'url' => $request->url])->first();
        if ($saveName->status == 3) {
            // Host reject

        } else {
            $saveName->name = $request->name;
            $saveName->status = 1;
            $saveName->save();

            $meeting = UserMeeting::where('url', $request->url)->first();
            $data = ['random_user' => $request->random, 'title' => $saveName->name . ' wants to enter in the meeting'];
            event(new sendNotification($data, $meeting->channel, $meeting->event));
        }
    }

    public function meetingApprove(Request $request)
    {
        $saveName = MeetingEntry::where(['random_user' => $request->random, 'url' => $request->url])->first();

        $saveName->status = $request->type;
        $saveName->save();

        $data = ['status' => $request->type];
        event(new sendNotification($data, $saveName->channel, $saveName->event));
    }
}
