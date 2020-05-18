<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.AddOrderStatus')); ?> <small><?php echo e(trans('labels.AddOrderStatus')); ?>...</small> </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/orderstatus')); ?>"><i class="fa fa-dashboard"></i><?php echo e(trans('labels.ListingOrderStatus')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.AddOrderStatus')); ?></li>
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
            <h3 class="box-title"><?php echo e(trans('labels.AddOrderStatus')); ?></h3>
          </div>
          
          <!-- /.box-header -->
          <div class="box-body">
          <div class="row">
              <div class="col-xs-12">              		
				  <?php if(count($errors) > 0): ?>
					  <?php if($errors->any()): ?>
						<div class="alert alert-success alert-dismissible" role="alert">
						  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						  <?php echo e($errors->first()); ?>

						</div>
					  <?php endif; ?>
				  <?php endif; ?>
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
              	  <div class="box box-info">
                        <!-- form start -->                        
                         <div class="box-body">
                         
                            <?php echo Form::open(array('url' =>'admin/addNewOrderStatus', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>

                            
                            <div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Language')); ?></label>
								<div class="col-sm-10 col-md-4">
                                    <select name="language_id" class="form-control">
                                    	<?php $__currentLoopData = $result['languages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languages): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        	<option value="<?php echo e($languages->languages_id); ?>"><?php echo e($languages->name); ?></option>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.StatusLanguageText')); ?></span>
								</div>
							</div>
                            
                            <div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Set Default')); ?></label>
								<div class="col-sm-10 col-md-4">
                                    <select name="public_flag" class="form-control">
                                        	<option value="0"><?php echo e(trans('labels.No')); ?></option>
                                        	<option value="1"><?php echo e(trans('labels.Yes')); ?></option>
                                    </select>
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.StatusLanguageText')); ?></span>
								</div>
							</div>
							
							<div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.OrdersStatus')); ?></label>
								<div class="col-sm-10 col-md-4">
									<?php echo Form::text('orders_status_name',  '', array('class'=>'form-control field-validate', 'id'=>'orders_status_name')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.OrdersStatusMessage')); ?></span>
                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
								</div>
							</div>							
							<!-- /.box-body -->
							<div class="box-footer text-right">
                            	<div class="col-sm-offset-2 col-md-offset-3 col-sm-10 col-md-4">
                                    <button type="submit" class="btn btn-primary"><?php echo e(trans('labels.AddStatus')); ?></button>
                                    <a href="orderstatus" type="button" class="btn btn-default"><?php echo e(trans('labels.back')); ?></a>
                                </div>
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