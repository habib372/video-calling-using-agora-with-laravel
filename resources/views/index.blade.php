<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Welcome to Video Stream</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="{{ asset('agoraVideo/video-session.png')}}" rel="apple-touch-icon">

        <!-- Styles -->
        <style>
            h1{
                text-align: center;
                margin-top: 5rem;
                font-size: 40px;
            }
            body {
                font-family: 'Nunito', sans-serif;
            }
            div.hidden.fixed{
                text-align: center;
            }
            .custom-button {
                background: #077ab8;
                padding: 7px 20px;
                border-radius: 5px;
                margin-right: 5px;
                text-decoration: none;
                color:white;
            }

        </style>
    </head>
    <body class="antialiased">
        <div class="relative flex items-top justify-center min-h-screen bg-gray-100 dark:bg-gray-900 sm:items-center py-4 sm:pt-0">
            <h1>Welcome to Video Stream</h1>
             @if (Route::has('login'))
                <div class="hidden fixed text-center px-6 py-4 sm:block">
                    @auth
                        <a href="{{ url('/home') }}" class="custom-button text-sm text-gray-700 dark:text-gray-500 underline">Start Video Session</a>
                    @else
                        <a href="{{ route('login') }}" class="custom-button text-sm text-gray-700 dark:text-gray-500 underline">Log in</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}" class="custom-button ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
        </div>
    </body>
</html>
