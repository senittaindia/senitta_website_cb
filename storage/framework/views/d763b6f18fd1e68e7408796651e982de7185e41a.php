<?php $__env->startSection('content'); ?>
<section class="site-content">
<div class="container">
<div class="breadcum-area">
    <div class="breadcum-inner">
        <h3><?php echo app('translator')->getFromJson('website.Signup'); ?></h3>
        <ol class="breadcrumb">
            
            <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
            <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.Signup'); ?></li>
        </ol>
    </div>
</div>

<div class="registration-area">

        <div class="heading">
            <h2><?php echo app('translator')->getFromJson('website.Create An Account'); ?></h2>
            <hr>
        </div>
		<div class="row">
			<div class="col-12 col-md-6 col-lg-7 new-customers">
				<h5 class="title-h5"><?php echo app('translator')->getFromJson('website.Personal Information'); ?></h5>
				<!-- <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p> -->

				<hr class="featurette-divider">
				<?php if( count($errors) > 0): ?>
					<?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                            <?php echo e($error); ?>

                          	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
						</div>
					 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				<?php endif; ?>

				<?php if(Session::has('error')): ?>
					<div class="alert alert-danger alert-dismissible fade show" role="alert">
						  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						  <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
						  <?php echo session('error'); ?>

                          
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
					</div>
				<?php endif; ?>

				<?php if(Session::has('success')): ?>
					<div class="alert alert-success alert-dismissible fade show" role="alert">
						  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
						  <span class="sr-only"><?php echo app('translator')->getFromJson('website.Success'); ?>:</span>
						  <?php echo session('success'); ?>

                          
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          		<span aria-hidden="true">&times;</span>
                          </button>
					</div>
				<?php endif; ?>

				<form name="signup" enctype="multipart/form-data" class="form-validate" action="<?php echo e(URL::to('/signupProcess')); ?>" method="post">
                
                	<div class="form-group row justify-content-center">
						
                        <div class="uploader">
                        	<h5 class="title-h5"><?php echo app('translator')->getFromJson('website.Upload Profile Photo'); ?></h5>
                            
                            
                            <div class="upload-picture">
                                <div class="uploaded-image" id="uploaded_image"></div>
                                <img class="upload-choose-icon" src="<?php echo e(asset('').'public/images/default.png'); ?>" />
                                <div class="upload-choose-icon">
                                	<input name="picture" id="userImage" type="file" class="inputFile" onChange="showPreview(this);" />
                                </div>
                            </div>


                        </div>
						<!--<label for="picture" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Picture'); ?></label>
						<div class="col-sm-8">
							<input type="file" class="form-control-file" name="picture" id="picture">
						</div>-->

					</div>
                    
					<div class="form-group row">
						<label for="staticEmail" class="col-sm-4 col-form-label"><strong>*</strong><?php echo app('translator')->getFromJson('website.First Name'); ?></label>
						<div class="col-sm-8">
							<input type="text" name="firstName" id="firstName" class="form-control field-validate" value="<?php echo e(old('firstName')); ?>" required>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your first name'); ?></span> 
						</div>
					</div>
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-4 col-form-label"><strong>*</strong><?php echo app('translator')->getFromJson('website.Last Name'); ?></label>
						<div class="col-sm-8">
							<input type="text" name="lastName" id="lastName" class="form-control field-validate"  value="<?php echo e(old('lastName')); ?>" required>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your last name'); ?></span> 
						</div>
					</div>
					<hr class="featurette-divider">
					<div class="form-group row">
						<label for="inputPassword" class="col-sm-4 col-form-label"><strong>*</strong>Email Address</label>
						<div class="col-sm-8">
							<input type="email" name="email" id="email" class="form-control email-validate" value="<?php echo e(old('email')); ?>" required>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid email address'); ?></span>
						</div>
					</div>
					<div class="form-group row">
						<label for="inlineFormCustomSelect" class="col-sm-4 col-form-label"><strong>*</strong><?php echo app('translator')->getFromJson('website.Gender'); ?></label>
						<div class="col-sm-8">
							<select class="custom-select field-validate" name="gender" id="inlineFormCustomSelect" required>
								<option selected value=""><?php echo app('translator')->getFromJson('website.Choose...'); ?></option>
								<option value="0" <?php if(!empty(old('gender')) and old('gender')==0): ?> selected <?php endif; ?>)><?php echo app('translator')->getFromJson('website.Male'); ?></option>
								<option value="1" <?php if(!empty(old('gender')) and old('gender')==1): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Female'); ?></option>
							</select>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your gender'); ?></span>
						</div>
					</div>
					

					<div class="form-group row">
						<label for="inputPassword4" class="col-sm-4 col-form-label"><strong>*</strong><?php echo app('translator')->getFromJson('website.Password'); ?></label>
						<div class="col-sm-8">
							<input type="password" class="form-control password" name="password" id="password" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your password'); ?></span>
							<input type="checkbox" onclick="myFunction()">Show Password
						</div>
				  	
					</div>
					<div class="form-group row">					
						<label for="inputPassword5" class="col-sm-4 col-form-label"><strong>*</strong><?php echo app('translator')->getFromJson('website.Confirm Password'); ?></label>
						<div class="col-sm-8 re-password-content">
							<input type="password" class="form-control password" name="re_password" id="re_password" required>
							<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please re-enter your password'); ?></span>
							<span class="help-block error-content-password" hidden><?php echo app('translator')->getFromJson('website.Password does not match the confirm password'); ?></span>
						</div>				  	
					</div>
					<div class="form-group row">
						<label class="col-sm-4 col-form-label"></label>
						<div class="col-sm-8">
							<div class="form-check checkbox-parent">
								<label class="form-check-label">
									<input class="form-check-input checkbox-validate" type="checkbox"><?php echo app('translator')->getFromJson('website.Creating an account means you are okay with our'); ?>  <?php if(!empty($result['commonContent']['pages'][3]->slug)): ?><a href="<?php echo e(URL::to('/page?name='.$result['commonContent']['pages'][3]->slug)); ?>"><?php endif; ?> <?php echo app('translator')->getFromJson('website.Terms and Services'); ?><?php if(!empty($result['commonContent']['pages'][3]->slug)): ?></a><?php endif; ?>, <?php if(!empty($result['commonContent']['pages'][1]->slug)): ?><a href="<?php echo e(URL::to('/page?name='.$result['commonContent']['pages'][1]->slug)); ?>"><?php endif; ?> <?php echo app('translator')->getFromJson('website.Privacy Policy'); ?><?php if(!empty($result['commonContent']['pages'][1]->slug)): ?></a> <?php endif; ?> and <?php if(!empty($result['commonContent']['pages'][2]->slug)): ?><a href="<?php echo e(URL::to('/page?name='.$result['commonContent']['pages'][2]->slug)); ?>"><?php endif; ?> <?php echo app('translator')->getFromJson('Return Policy'); ?> <?php if(!empty($result['commonContent']['pages'][3]->slug)): ?></a><?php endif; ?>.
								</label>
								<span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please accept our terms and conditions'); ?></span>
							</div>
                            
						</div>
					</div>
					<div class="button">
                    	<button type="submit" class="btn btn-dark pull-right"><?php echo app('translator')->getFromJson('website.Sign Up'); ?></button>
                    </div>
				</form>
			</div>
			<!--<div class="col-12 col-md-6 col-lg-5 new-customers">
					<ul>
						<li><?php echo app('translator')->getFromJson('website.Lorem ipsum dolor sit amet, consectetur adipiscing elit'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Duis at nisl luctus, malesuada diam non, mattis odio'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Fusce porta neque at enim consequat, in vulputate tellus faucibus'); ?></li>
						<br>
						<li><?php echo app('translator')->getFromJson('website.Pellentesque suscipit tortor id dui accumsan varius'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Sed interdum purus imperdiet tortor imperdiet, et ultricies leo gravida'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Aliquam pharetra urna vel nulla egestas, non laoreet mauris mollis'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Integer sed velit sit amet quam pharetra ullamcorper'); ?></li>
						<br>
						<li><?php echo app('translator')->getFromJson('website.Proin eget nulla accumsan, finibus lacus aliquam, tincidunt turpis'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Nam at orci tempor, mollis mi ornare, accumsan risus'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Cras vel ante vel augue convallis posuere'); ?></li>
						<li><?php echo app('translator')->getFromJson('website.Ut quis dolor accumsan, viverra neque nec, blandit leo'); ?></li>
					</ul>	
			</div>-->
		</div>
	</div>		
	</div>
   </section>
		
<?php $__env->stopSection(); ?> 	



<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>







<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>