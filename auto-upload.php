<!DOCTYPE html>
<html>
<head>
    <meta name="google-signin-client_id" content="591515239318-m1kltvq8s3ng853m137jb2evmq98rh2a.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>
</head>
<body>
    <script>
        function renderButton() {
            gapi.load('auth2', function() {
                auth2 = gapi.auth2.init({
                  client_id: '591515239318-m1kltvq8s3ng853m137jb2evmq98rh2a.apps.googleusercontent.com',
                  cookiepolicy: 'single_host_origin',
                  scope: 'profile'
                });
                gapi.client.load('oauth2', 'v2', function () {  
                    gapi.client.load('oauth2', 'v2', function () {
                        var request = gapi.client.oauth2.userinfo.get({
                            'userId': 'me'
                        });
                        request.execute(function (resp) {
                            console.log(resp);
                        });
                    });
                });
                // auth2.attachClickHandler(element, {},onSuccess,onFailure);
            });
        }
        // Sign-in success callback
        function onSuccess(googleUser) {
            // Get the Google profile data (basic)
            //var profile = googleUser.getBasicProfile();
            // Retrieve the Google account data
            gapi.client.load('oauth2', 'v2', function () {
                var request = gapi.client.oauth2.userinfo.get({
                    'userId': 'me'
                });
                request.execute(function (resp) {
                    console.log(resp);
                });
            });
        }
        
        // Sign-in failure callback
        function onFailure(error) {
            alert(error);
        }
    </script>
</body>
</html>