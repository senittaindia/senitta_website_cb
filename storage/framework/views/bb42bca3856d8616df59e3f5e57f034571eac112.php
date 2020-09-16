<?php $__env->startSection('content'); ?>

<section class="site-content">
<div class="container">
<div class="breadcum-area">
<div class="breadcum-inner">
<h3><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></h3>
<ol class="breadcrumb">

<li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
<li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></li>
</ol>
</div>
</div>
<div class="my-shipping-area">
<div class="row"> 
<div class="col-12 col-lg-3 spaceright-0">
<?php echo $__env->make('common.sidebar_account', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</div>
<div class="col-12 col-lg-9 my-shipping">
<div class="col-12 spaceright-0">
<div class="heading">
    <h2><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></h2>
    <hr>
</div>
<div class="row">

    <div class="col-12">
    	<?php if(!empty($result['action']) and $result['action']=='detele'): ?>
            <div class="alert alert-success alert-dismissible" role="alert">
                <?php echo app('translator')->getFromJson('website.Your address has been deteled successfully'); ?>
                
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
        <?php endif; ?>

        <?php if(!empty($result['action']) and $result['action']=='default'): ?>
            <div class="alert alert-success alert-dismissible" role="alert">
                <?php echo app('translator')->getFromJson('website.Your address has been chnaged successfully'); ?>	
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>					
            </div>
        <?php endif; ?>
        
        
        <div class="table-responsive">
            <table class="table table-hover">
              <thead>
                <tr>
                  <th scope="col" align="left"><?php echo app('translator')->getFromJson('website.Default'); ?></th>
                  <th scope="col" align="left" width="65%"><?php echo app('translator')->getFromJson('website.Address Info'); ?></th>
                  <th scope="col" align="left"><?php echo app('translator')->getFromJson('website.Action'); ?></th>
                </tr>
              </thead>
              <tbody class="table-default">
              <?php if(!empty($result['address']) and count($result['address'])>0): ?>
              <?php $__currentLoopData = $result['address']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $address_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                  <td scope="row" align="center" valign="center"><input class="form-control default_address" address_id="<?php echo e($address_data->address_id); ?>" type="radio" name="default" <?php if($address_data->default_address == $address_data->address_id): ?> checked <?php endif; ?>></td>
                  <td align="left"><?php echo e($address_data->firstname); ?>, <?php echo e($address_data->lastname); ?>, <?php echo e($address_data->street); ?>, <?php echo e($address_data->city); ?>, <?php echo e($address_data->zone_name); ?>, <?php echo e($address_data->country_name); ?>, <?php echo e($address_data->postcode); ?></td>
                  <td align="left"><a class="badge badge-light" href="<?php echo e(URL::to('/shipping-address?address_id='.$address_data->address_id)); ?>"><i class="fa fa-pencil" aria-hidden="true"></i> </a>
                  <?php if($address_data->default_address != $address_data->address_id): ?> 
                  <a href="#" class="badge badge-danger deleteMyAddress" address_id ="<?php echo e($address_data->address_id); ?>"><i class="fa fa-trash" aria-hidden="true"></i></a> <?php endif; ?>
                  </td>
                </tr>
             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
             <?php else: ?>
             	<tr>
                  <td valign="center"><?php echo app('translator')->getFromJson('website.Shipping addresses are not added yet'); ?></td>
                </tr>
             <?php endif; ?>
              </tbody>
            </table>
        </div>
    </div>
</div>

<hr class="featurette-divider">

<div class="row">
	<div class="col-12">
            <h5 class="title-h5"><?php if(!empty($result['editAddress'])): ?> <?php echo app('translator')->getFromJson('website.Edit Address'); ?> <?php else: ?> <?php echo app('translator')->getFromJson('website.Add Address'); ?> <?php endif; ?> </h5>
            <hr class="featurette-divider">
            <form name="addMyAddress" class="form-validate" enctype="multipart/form-data" action="<?php if(!empty($result['editAddress'])): ?> <?php echo e(URL::to('/update-address')); ?> <?php else: ?> <?php echo e(URL::to('/addMyAddress')); ?> <?php endif; ?>  " method="post">
             <?php if(!empty($result['editAddress'])): ?>
             <input type="hidden" name="address_book_id" value="<?php echo e($result['editAddress'][0]->address_id); ?>">
             <?php endif; ?>
                 <?php if( count($errors) > 0): ?>
                    <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="alert alert-danger" role="alert">
                              <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                              <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                              <?php echo e($error); ?>

                        </div>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
               <?php if(session()->has('error')): ?>
                <div class="alert alert-success">
                    <?php echo e(session()->get('error')); ?>

                </div>
            <?php endif; ?>
                <?php if(Session::has('error')): ?>
                    
                    <div class="alert alert-danger" role="alert">
                          <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                          <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                          <?php echo e(session()->get('error')); ?>

                      </div>
                
                <?php endif; ?>
                
                <?php if(Session::has('error')): ?>
                    <div class="alert alert-danger" role="alert">
                          <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                          <span class="sr-only"><?php echo app('translator')->getFromJson('website.Error'); ?>:</span>
                          <?php echo session('loginError'); ?>

                    </div>
                <?php endif; ?>
                
                <?php if(session()->has('success') ): ?>
                    <div class="alert alert-success">
                        <?php echo e(session()->get('success')); ?>

                    </div>
                <?php endif; ?>
             
               <?php if(!empty($result['action']) and $result['action']=='update'): ?>
                    <div class="alert alert-success">
                        
                        <?php echo app('translator')->getFromJson('website.Your address has been updated successfully'); ?>
                    </div>
                <?php endif; ?>
                
                <div class="form-group row">
                    <label for="entry_firstname" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.First Name'); ?></label>
                    <div class="col-sm-8">
                        <input type="text" name="entry_firstname" class="form-control field-validate" id="entry_firstname" <?php if(!empty($result['editAddress'])): ?> value="<?php echo e($result['editAddress'][0]->firstname); ?>" <?php endif; ?>>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your first name'); ?></span> 
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="entry_lastname" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Last Name'); ?></label>
                    <div class="col-sm-8">
                        <input type="text" name="entry_lastname" class="form-control field-validate" id="entry_lastname" <?php if(!empty($result['editAddress'])): ?> value="<?php echo e($result['editAddress'][0]->lastname); ?>" <?php endif; ?>>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your last name'); ?></span>
                    </div>
                </div>
                
                
                
                
                <div class="form-group row">
                    <label for="entry_street_address" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Address'); ?></label>
                    <div class="col-sm-8">
                        <input type="text" name="entry_street_address" class="form-control field-validate" id="entry_street_address" <?php if(!empty($result['editAddress'])): ?> value="<?php echo e($result['editAddress'][0]->street); ?>" <?php endif; ?>>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your address'); ?></span>
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="entry_country_id" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Country'); ?></label>
                    <div class="col-sm-8">
                        <select name="entry_country_id" onChange="getZones();" id="entry_country_id" class="form-control field-validate">
                            <option value=""><?php echo app('translator')->getFromJson('website.select Country'); ?></option>
                            <?php $__currentLoopData = $result['countries']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $countries): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($countries->countries_id); ?>" <?php if(!empty($result['editAddress'])): ?> <?php if($countries->countries_id==$result['editAddress'][0]->countries_id): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e($countries->countries_name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your country'); ?></span> 
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="entry_zone_id" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.State'); ?></label>
                    <div class="col-sm-8">
                        <select name="entry_zone_id" id="entry_zone_id" class="form-control field-validate">
                            <option value=""><?php echo app('translator')->getFromJson('website.Select Zone'); ?></option>
                            <?php if(!empty($result['zones'])): ?>
                            <?php $__currentLoopData = $result['zones']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $zones): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <option value="<?php echo e($zones->zone_id); ?>" <?php if(!empty($result['editAddress'])): ?> <?php if($zones->zone_id==$result['editAddress'][0]->zone_id): ?> selected <?php endif; ?> <?php endif; ?>><?php echo e($zones->zone_name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                        </select>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please select your state'); ?></span> 
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="entry_city" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.City'); ?></label>
                    <div class="col-sm-8">
                        <input type="text" name="entry_city" class="form-control field-validate" id="entry_city" <?php if(!empty($result['editAddress'])): ?> value="<?php echo e($result['editAddress'][0]->city); ?>" <?php endif; ?>>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your city'); ?></span>
                    </div>
                </div>
                
                <div class="form-group row">
                    <label for="entry_postcode" class="col-sm-4 col-form-label"><?php echo app('translator')->getFromJson('website.Zip/Postal Code'); ?></label>
                    <div class="col-sm-8">
                        <input type="text" name="entry_postcode" maxlength="6" minlength="6" pattern="[0-9]{6}" class="form-control field-validate" id="entry_postcode" <?php if(!empty($result['editAddress'])): ?> value="<?php echo e($result['editAddress'][0]->postcode); ?>" <?php endif; ?>>
                        <span class="help-block error-content" hidden><?php echo app('translator')->getFromJson('website.Please enter your Zip/Postal Code'); ?></span> 
                    </div>
                </div>	 
                
                <div class="button">
                <?php if(!empty($result['editAddress'])): ?>
                    <a href="<?php echo e(URL::to('/myAddress')); ?>" class="btn btn-default"><?php echo app('translator')->getFromJson('website.cancel'); ?></a>
                <?php endif; ?>
                    <button type="submit" class="btn btn-dark"><?php if(!empty($result['editAddress'])): ?>  <?php echo app('translator')->getFromJson('website.Update'); ?>  <?php else: ?> <?php echo app('translator')->getFromJson('website.Add Address'); ?> <?php endif; ?> </button>
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