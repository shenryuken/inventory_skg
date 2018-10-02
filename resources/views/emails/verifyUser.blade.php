<!DOCTYPE html>
<html>
<head>
    <title>Welcome Email</title>
</head>
 
<body>
<h2>Welcome to the site {{$user['name']}}</h2>
<br/>
Your registered email-id is {{$user['email']}} , Please click on the below link to verify your email account
<br/>
<a href="{{url('user/verify', $user->verifyUser->token)}}">Verify Email</a>

 	<p>
        Email: {{ $user->email }}<br>
        Username: {{ $user->username }}<br>
        Password: {{ $random_password }} - This password for temporary only. Please change your password after login.<br>
    </p>
</body>
 
</html>