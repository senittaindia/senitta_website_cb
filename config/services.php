<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],	
		
	'facebook' => [
		'client_id' => '732705403868101',
		'client_secret' => '038ca8e9afa8602cf26d651e36a6de29',
		'redirect' => 'https://senitta.com/login/facebook/callback',
	],
	
	
//     'google' => [
// 		'client_id' => '591515239318-vp00carn88iumtv96pkq3kpaubtnkkjo.apps.googleusercontent.com',
// 		'client_secret' => '9kLWrAEng3k-g93dr1RC5mXR',
// 		'redirect' => 'https://senitta.com/login/google/callback',
// 	],

'google' => [
		'client_id' => '591515239318-m1kltvq8s3ng853m137jb2evmq98rh2a.apps.googleusercontent.com',
		'client_secret' => '9lVGfhbx05xAh5zRpAmOVoUQ',
		'redirect' => 'https://www.senitta.com/login.html',
	],

];
