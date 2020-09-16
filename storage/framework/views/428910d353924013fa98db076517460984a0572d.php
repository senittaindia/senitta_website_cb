<?php $__env->startSection('content'); ?>
<section class="site-content">
	<div class="container">
    	<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.myProfile'); ?></h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                    <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.myProfile'); ?></li>
                </ol>
            </div>
        </div>

        <div class="registration-area">
            
            
            <div class="row">            	
                <div class="col-12 col-lg-3 spaceright-0">
                    <?php echo $__env->make('common.sidebar_account', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                </div>
            	<div class="col-12 col-lg-9 new-customers">
                	<div class="col-12 spaceright-0">
                    	<div class="heading">
                            <h2><?php echo app('translator')->getFromJson('website.myProfile'); ?></h2>
                            <hr>
                        </div>
                        
                         <div class="row">
                            <div class="col-sm-12">
                                <form name="updateMyProfile" class="form-validate" enctype="multipart/form-data" action="<?php echo e(URL::to('updateMyProfile')); ?>" method="post">
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
                                    
                                    <?php if(session()->has('error')): ?>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <?php echo e(session()->get('error')); ?>

                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <?php endif; ?>
                                    
                                    <?php if(Session::has('error')): ?>
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                            <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                                            <?php echo e(session()->get('error')); ?>

                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <?php endif; ?>
                                
                                    <?php if(Session::has('error')): ?>
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                            <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                                            <?php echo session('loginError'); ?>

                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <?php endif; ?>
                                
                                    <?php if(session()->has('success') ): ?>
                                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                                            <?php echo e(session()->get('success')); ?>

                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    <?php endif; ?>                                    
                                    
                                    <div class="form-group row justify-content-center">						
                                        <div class="uploader">
                                            <h5 class="title-h5">Upload Profile Photo</h5> 
                                            <div class="upload-picture">
                                                <div class="uploaded-image" id="uploaded_image">
                                                <?php if(!empty(auth()->guard('customer')->user()->customers_picture)): ?>
                                                	<img src="<?php echo e(asset('').auth()->guard('customer')->user()->customers_picture); ?>" width="150px" height="150px" class="upload-preview">
                                                    <input type="hidden" name="customers_old_picture" value="<?php echo e(auth()->guard('customer')->user()->customers_picture); ?>">
                                                <?php else: ?>
                                                	<input type="hidden" name="customers_old_picture" value="">
                                                <?php endif; ?>
                                                </div>
                                                <img class="upload-choose-icon" src="<?php echo e(asset('').'public/images/default.png'); ?>" />
                                                <div class="upload-choose-icon">
                                                    <input name="picture" id="userImage" type="file" class="inputFile" onChange="showPreview(this);" />
                                                </div>
                                            </div>   
                                        </div>                
                                    </div>
                                	<h5 class="title-h5"><?php echo app('translator')->getFromJson('website.Personal Information'); ?></h5>
                        			<hr class="featurette-divider">
                                    
                                    <div class="form-group row">
                                        <label for="firstName" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.First Name'); ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="customers_firstname" class="form-control field-validate" placeholder="<?php echo app('translator')->getFromJson('website.First Name'); ?>" id="firstName" value="<?php echo e(auth()->guard('customer')->user()->customers_firstname); ?>">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your first name'); ?></span>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row">
                                        <label for="lastName" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Last Name'); ?></label>
                                        <div class="col-sm-8">
                                            <input type="text" name="customers_lastname" placeholder="<?php echo app('translator')->getFromJson('website.Last Name'); ?>" class="form-control field-validate" id="lastName" value="<?php echo e(auth()->guard('customer')->user()->customers_lastname); ?>">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your last name'); ?></span>
                                        </div>
                                    </div>
                                  
                                    <div class="form-group row">
                                        <label for="gender" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Gender'); ?></label>
                                        <div class="col-sm-8">
                                            <select class="custom-select field-validation" name="customers_gender" id="gender">
                                                <option value="0" <?php if(auth()->guard('customer')->user()->customers_gender == 0): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Male'); ?></option>
                                                <option value="1"  <?php if(auth()->guard('customer')->user()->customers_gender == 1): ?> selected <?php endif; ?>><?php echo app('translator')->getFromJson('website.Female'); ?></option>
                                            </select>
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your gender'); ?></span>
                                        </div>                                        
                                    </div>
                                                                 
                                    <div class="form-group row">
                                        <label for="datepicker" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Date of Birth'); ?></label>
                                        <div class="col-sm-8">
                                            <input readonly name="customers_dob" type="text" class="form-control" id="datepicker" placeholder="<?php echo app('translator')->getFromJson('website.Date of Birth'); ?>" value="<?php echo e(auth()->guard('customer')->user()->customers_dob); ?>">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your date of birth.'); ?></span>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="phone" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Phone Number'); ?></label>
                                        <div class="col-sm-8">
                                            <input name="customers_telephone" type="tel" class="form-control number-validate" id="phone" placeholder="<?php echo app('translator')->getFromJson('website.Phone Number'); ?>" value="<?php echo e(auth()->guard('customer')->user()->customers_telephone); ?>">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your valid phone number'); ?></span>
                                        </div>
                                    </div>
                                    <div class="button">
                                        <button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Update'); ?></button>
                                    </div>
                                </form>
                                                                
                                <h5 class="title-h5" style="margin-top:30px;"><?php echo app('translator')->getFromJson('website.Change Password'); ?></h5>
                                <hr class="featurette-divider">
                                <form name="updateMyPassword" class="" enctype="multipart/form-data" action="<?php echo e(URL::to('/updateMyPassword')); ?>" method="post">
                                    <div class="form-group row">
                                        <label for="new_password" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.New Password'); ?></label>
                                        <div class="col-sm-8">
                                            <input name="new_password" type="password" class="form-control" id="new_password" placeholder="<?php echo app('translator')->getFromJson('website.New Password'); ?>">
                                            <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your password and should be at least 6 characters long'); ?></span>
                                        </div>
                                    </div>
                                    <div class="button">
                                        <button type="submit" class="btn btn-dark"><?php echo app('translator')->getFromJson('website.Update'); ?></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
		</div>		
	</div>
</section>
<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>