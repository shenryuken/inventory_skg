<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/users/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout', 'userLogout');
    }

     public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        //vallidate the form data
        $this->validate($request, [
            'email' => 'required|exists:users,email|email',
            'password' => 'required|min:6',
            //'g-recaptcha-response' => 'required|captcha'
            ]);
        //Attempt to log the user in
        if(Auth::guard('web')->attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
            //if successful, then redirect to their intended location
            if(Auth::guard('web')->user()->verified == 1){
                return redirect()->intended(route('users.dashboard'));
            } else {
                auth()->logout();
                return back()->with('warning', 'You need to confirm your account. We have sent you an activation code, please check your email.');
            }   
        }
       
        //if unsuccessful, then redirect back to the login with the form data
        return redirect()->back()->withInput($request->only('email', 'remember'));
    }

    public function userLogout()
    {
        Auth::guard('web')->logout();
        return redirect('/');
    }

    public function authenticated(Request $request, $user)
    {
        if (!$user->verified) {
            auth()->logout();
            return back()->with('warning', 'You need to confirm your account. We have sent you an activation code, please check your email.');
        }
        return redirect()->intended($this->redirectPath());
    }
}
