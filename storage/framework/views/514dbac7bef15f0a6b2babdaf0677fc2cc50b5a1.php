<?php $__env->startSection('content'); ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.EditCustomers')); ?> <small><?php echo e(trans('labels.EditCustomers')); ?>...</small> </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/customers')); ?>"><i class="fa fa-users"></i> <?php echo e(trans('labels.ListingAllCustomers')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.EditCustomers')); ?></li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- Info boxes -->

    <!-- /.row -->

    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"><?php echo e(trans('labels.EditCustomers')); ?> </h3>
          </div>

          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		<div class="box box-info">
                        <!--<div class="box-header with-border">
                          <h3 class="box-title">Edit category</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <br>
                       	<?php if(count($data['message'])>0): ?>
						<div class="alert alert-success alert-dismissible" role="alert">
						  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						 <?php echo e($data['message']); ?>

						</div>
						<?php endif; ?>

                       <?php if(count($data['errorMessage'])>0): ?>
						<div class="alert alert-danger" role="alert">
						  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						 <?php echo e($data['errorMessage']); ?>

						</div>
						<?php endif; ?>

                        <!-- form start -->
                         <div class="box-body">

                            <?php echo Form::open(array('url' =>'admin/updatecustomers', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>

                            	<?php echo Form::hidden('customers_id',  $data['customers'][0]->customers_id, array('class'=>'form-control', 'id'=>'customers_id')); ?>


                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FirstName')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('customers_firstname',  $data['customers'][0]->customers_firstname, array('class'=>'form-control field-validate', 'id'=>'customers_firstname')); ?>

                                     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.FirstNameText')); ?></span>
                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.LastName')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('customers_lastname',  $data['customers'][0]->customers_lastname, array('class'=>'form-control field-validate', 'id'=>'customers_lastname')); ?>

                                   <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.lastNameText')); ?></span>
                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                  </div>
                                </div>
                                <div class="form-group">
                               	 <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Gender')); ?></label>
                                   <div class="col-sm-10 col-md-4">
                                        <label>
                                          <input <?php if($data['customers'][0]->customers_gender == 1 or empty($data['customers'][0]->customers_gender)): ?> checked <?php endif; ?> type="radio" name="customers_gender" value="1" class="minimal" checked > <?php echo e(trans('labels.Male')); ?>

                                        </label><br>

                                        <label>
                                          <input <?php if( !empty($data['customers'][0]->customers_gender) and $data['customers'][0]->customers_gender == 0): ?> checked  <?php endif; ?> type="radio" name="customers_gender" value="0" class="minimal"> <?php echo e(trans('labels.Female')); ?>

                                        </label>
                                   </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Picture')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::file('newImage', array('id'=>'newImage')); ?>

                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.PictureText')); ?></span>
                                  <br>
                                    <?php echo Form::hidden('oldImage', $data['customers'][0]->customers_picture, array('id'=>'oldImage')); ?>

                                    <?php if(!empty($data['customers'][0]->customers_picture)): ?>
                                    	<img width="150px" src="<?php echo e(asset('').'/'.$data['customers'][0]->customers_picture); ?>" class="img-circle">
                                    <?php else: ?>
                                   	 <img width="150px" src="<?php echo e(asset('').'/resources/assets/images/default_images/user.png'); ?>" class="img-circle">
                                    <?php endif; ?>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.DOB')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('customers_dob',  $data['customers'][0]->customers_dob, array('class'=>'form-control' , 'id'=>'customers_dob')); ?>

                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.DOBText')); ?></span>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Telephone')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('customers_telephone',  $data['customers'][0]->customers_telephone, array('class'=>'form-control', 'id'=>'customers_telephone')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.TelephoneText')); ?></span>
                                  </div>
                                </div>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Fax')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('customers_fax',  $data['customers'][0]->customers_fax, array('class'=>'form-control', 'id'=>'customers_fax')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.FaxText')); ?></span>
                                  </div>
                                </div>
                                <hr>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.EmailAddress')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                   <?php echo Form::hidden('old_email_address',  $data['customers'][0]->email, array('class'=>'form-control', 'id'=>'old_email_address')); ?>

                                    <?php echo Form::email('email',  $data['customers'][0]->email, array('class'=>'form-control email-validate', 'id'=>'email')); ?>

                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"> <?php echo e(trans('labels.EmailText')); ?></span>

                                    <span class="help-block hidden"> <?php echo e(trans('labels.EmailError')); ?></span>
                                  </div>
                                </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.changePassword')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::checkbox('changePassword', 'yes', null, ['class' => '', 'id'=>'change-passowrd']); ?>

                                  </div>
                                </div>

                               <!-- <div class="form-group password_content">-->
                               <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Password')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::password('password', array('class'=>'form-control ', 'id'=>'password')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                   <?php echo e(trans('labels.PasswordText')); ?></span>
                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                  </div>
                               </div>

                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?>

                                   </label>
                                  <div class="col-sm-10 col-md-4">
                                    <select class="form-control" name="isActive">
                                          <option
                                              <?php if($data['customers'][0]->isActive == 1): ?>
                                                selected
                                              <?php endif; ?>
                                           value="1"><?php echo e(trans('labels.Active')); ?></option>
                                          <option
                                           <?php if($data['customers'][0]->isActive == 0): ?>
                                                selected
                                              <?php endif; ?>
                                           value="0"><?php echo e(trans('labels.Inactive')); ?></option>
									</select><span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.StatusText')); ?></span>

                                  </div>
                                </div>

                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Update')); ?> </button>
                                <a href="<?php echo e(URL::to('admin/customers')); ?>" type="button" class="btn btn-default"><?php echo e(trans('labels.back')); ?></a>
                              </div>
                              <!-- /.box-footer -->
                            <?php echo Form::close(); ?>

                        </div>
                  </div>
              </div>
            </div>

          </div>
          <!-- /.box-body -->
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- Main row -->

    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>