<!DOCTYPE html>
<html>
<head>
	<title>Verify Email</title>
</head>
<body>
	<h2>Hi Welcome to Test Mail : {!! $user->email !!}</h2>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
</head>

<body style="font-family: Arial; font-size: 12px;">
<div>
    <p>
        You are receiving this email because we received a register request for your account with SKG World.
    </p>
    <p>
        Please ignore this email if you did not request a register account with us.
    </p>

    <p>
        <a href="{{url('user/verify', $user->verifyUser->token)}}">
            Follow this link to verified your email.
        </a>
    </p>
    <p>
        Email: {{ $user->email }}
        Username: {{ $user->username }}
        Password: {{ $random_password }} - This password for temporary only. Please change your password after lokgin.
    </p>
</div>
</body>
</html>