<?php $__env->startSection('content'); ?>
<section class="site-content">
<div class="container">
<div class="breadcum-area">
        <div class="breadcum-inner">
            <h3><?php echo app('translator')->getFromJson('website.Login'); ?></h3>
            <ol class="breadcrumb">
                
                <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.Login'); ?></li>
            </ol>
        </div>
    </div>
    
<div class="registration-area">
	<div class="heading">
        <h2><?php echo app('translator')->getFromJson('website.Login Or Create An Account'); ?></h2>
        <hr>
    </div>

	<div class="row justify-content-center">
		<div class="col-12 col-md-6 col-lg-7 new-customers">
			<h5 class="title-h5"><?php echo app('translator')->getFromJson('website.New Customers'); ?></h5>
			<p><?php echo app('translator')->getFromJson('website.login page text for customer'); ?></p>

			<hr class="featurette-divider">
			<p class="text-center"><?php echo app('translator')->getFromJson('website.Dont have account'); ?> <a href="<?php echo e(URL::to('/signup')); ?>" class="btn btn-link ml-1"><b><?php echo app('translator')->getFromJson('website.Sign Up'); ?></b></a></p>
			<?php if($result['commonContent']['setting'][2]->value==1 and $result['commonContent']['setting'][61]->value==1): ?>
			<p class="font-small dark-grey-text text-right d-flex justify-content-center mb-3 pt-2"> <?php echo app('translator')->getFromJson('website.or Sign in with'); ?>:</p>

			<div class="row my-3 d-flex justify-content-center">
				<!--Facebook-->
                <?php if($result['commonContent']['setting'][2]->value==1): ?>
				<button href="login/facebook" class="btn btn-light facebook" onlogin="checkLoginState();"><i class="fa fa-facebook"></i><?php echo app('translator')->getFromJson('website.Login with Facebook'); ?></button>
				 <!--<fb:login-button-->
     <!--         id="fb-btn"-->
     <!--         class="btn btn-light facebook"-->
     <!--         onlogin="checkLoginState();">-->
     <!--       </fb:login-button>-->
                
                
                <?php endif; ?>
                <?php if($result['commonContent']['setting'][61]->value==1): ?>
				<!--Google +-->
				<!--<a href="login/google" class="btn btn-light google"><i class="fa fa-google-plus"></i><?php echo app('translator')->getFromJson('website.Login with Google'); ?></a>-->
				<div>
				    <button id="gSignIn" class="btn btn-light google"><i class="fa fa-google-plus"></i><?php echo app('translator')->getFromJson('website.Login with Google'); ?></button>
			    </div>
                <?php endif; ?>
			</div>
            <?php endif; ?>
		</div>

		<div class="col-12 col-md-6 col-lg-5 registered-customers">
            <?php if(Session::has('loginError')): ?>
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                    <?php echo session('loginError'); ?>

                    
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    	<span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>
            <?php if(Session::has('success')): ?>
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <span class="sr-only"><?php echo app('translator')->getFromJson('website.success'); ?>:</span>
                    <?php echo session('success'); ?>

                    
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    	<span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <?php endif; ?>
            
			<h5 class="title-h5">
				<?php echo app('translator')->getFromJson('website.Registered Customers'); ?>
			</h5>
			<p><?php echo app('translator')->getFromJson('website.If you have an account with us, please log in'); ?></p>

			<form name="signup" enctype="multipart/form-data" class="form-validate"  action="<?php echo e(URL::to('/process-login')); ?>" method="post">
		
				<div class="form-group row">
					<label for="staticEmail" class="col-sm-3 col-form-label"><?php echo app('translator')->getFromJson('website.Email'); ?></label>
					<div class="col-sm-9">
						<input type="email" name="email" id="email" class="form-control email-validate">
						<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid email address'); ?></span>
					</div>
				</div>
				<div class="form-group row">
					<label for="inputPassword" class="col-sm-3 col-form-label"><?php echo app('translator')->getFromJson('website.Password'); ?></label>
					<div class="col-sm-9">
						<input type="password" name="password" id="password" class="form-control field-validate">
						<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.This field is required'); ?></span>
					</div>
				</div>

				<div class="button">
                	<a href="<?php echo e(URL::to('/forgotPassword')); ?>" class="btn btn-link ml-1 mr-4"><?php echo app('translator')->getFromJson('website.Forgot Password'); ?></a>
                	<button type="submit" class="btn btn-dark" style="min-width:90px;"><?php echo app('translator')->getFromJson('website.Login'); ?></button>
                </div>
				

				
			</form>

		</div>
	</div>
</div> 
</div>
</section>
<form method="post" action="login/google/callback" id="logInWithGoogle">
    <input type="hidden" name="data" id="googleResponse">
</form>
<!--<form method="post" action="login/facebook/callback" id="logInWithFacebook">-->
<!--    <input type="hidden" name="data" id="fbResponse">-->
<!--</form>-->
<script>
    // Render Google Sign-in button
    function renderButton() {
        gapi.load('auth2', function() {
            auth2 = gapi.auth2.init({
              client_id: '375318083153-924ln99kqj1dmec32c25o4dqsse0tekj.apps.googleusercontent.com',
              cookiepolicy: 'single_host_origin',
              scope: 'profile'
            });
        
          auth2.attachClickHandler(element, {},onSuccess,onFailure);
        });
        
          element = document.getElementById('gSignIn');
    }
    // Sign-in success callback
    function onSuccess(googleUser) {
        
        // Retrieve the Google account data
        gapi.client.load('oauth2', 'v2', function () {
            var request = gapi.client.oauth2.userinfo.get({
                'userId': 'me'
            });
            request.execute(function (resp) {
                console.log(resp);
                document.getElementById("googleResponse").value = JSON.stringify(resp.result);
                document.getElementById("logInWithGoogle").submit();
            });
        });
    }
    
    // Sign-in failure callback
    function onFailure(error) {
        // alert(error);
    }
    
    // Sign out the user
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.disconnect();
    }
    
    // Facebook
    window.fbAsyncInit = function() {
        FB.init({
          appId      : '258025222294872',
          cookie     : true,
          xfbml      : true,
          version    : 'v5.0'
        });

        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));

       function statusChangeCallback(response){
         if(response.status === 'connected'){
           console.log('Logged in and authenticated');
           setElements(true);
           testAPI();
         } else {
           console.log('Not authenticated');
           setElements(false);
         }
       }

      function checkLoginState() {
        FB.getLoginStatus(function(response) {
          statusChangeCallback(response);
        });
      }

      function testAPI(){
        FB.api('/me?fields=name,email,birthday,location', function(response){
          if(response && !response.error){
            console.log(response);
            document.getElementById("fbResponse").value = JSON.stringify(response.result);
                document.getElementById("logInWithFacebook").submit();
          }

          FB.api('/me/feed', function(response){
            if(response && !response.error){
              buildFeed(response);
            }
          });
        })
      }

      function buildProfile(user){
        // let profile = `
        //   <h3>${user.name}</h3>
        //   <ul class="list-group">
        //     <li class="list-group-item">User ID: ${user.id}</li>
        //     <li class="list-group-item">Email: ${user.email}</li>
        //     <li class="list-group-item">Birthday: ${user.birthday}</li>
        //     <li class="list-group-item">User ID: ${user.location.name}</li>
        //   </ul>
        // `;

        // document.getElementById('profile').innerHTML = profile;
      }

      function buildFeed(feed){
        // let output = '<h3>Latest Posts</h3>';
        // for(let i in feed.data){
        //   if(feed.data[i].message){
        //     output += `
        //       <div class="well">
        //         ${feed.data[i].message} <span>${feed.data[i].created_time}</span>
        //       </div>
        //     `;
        //   }
        // }

        // document.getElementById('feed').innerHTML = output;
      }

      function setElements(isLoggedIn){
        // if(isLoggedIn){
        //   document.getElementById('logout').style.display = 'block';
        //   document.getElementById('profile').style.display = 'block';
        //   document.getElementById('feed').style.display = 'block';
        //   document.getElementById('fb-btn').style.display = 'none';
        //   document.getElementById('heading').style.display = 'none';
        // } else {
        //   document.getElementById('logout').style.display = 'none';
        //   document.getElementById('profile').style.display = 'none';
        //   document.getElementById('feed').style.display = 'none';
        //   document.getElementById('fb-btn').style.display = 'block';
        //   document.getElementById('heading').style.display = 'block';
        // }
      }

      function logout(){
        FB.logout(function(response){
          setElements(false);
        });
      }
    
</script>
<script src="https://apis.google.com/js/client:platform.js?onload=renderButton" async defer></script>
<script  crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"async defer></script>
<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>