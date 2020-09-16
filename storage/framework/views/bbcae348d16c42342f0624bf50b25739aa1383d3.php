<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.FlateRateSetting')); ?> <small><?php echo e(trans('labels.Setting')); ?>...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to("admin/shippingmethods")); ?>"><i class="fa fa-dashboard"></i><?php echo e(trans('labels.ShippingMethods')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.FlateRateSetting')); ?></li>
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
            <h3 class="box-title"><?php echo e(trans('labels.FlateRateSetting')); ?></h3>
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
                            <?php echo Form::open(array('url' =>'admin/updateflaterate', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                            <?php echo Form::hidden('id',  $result['flate_rate'][0]->id, array('class'=>'form-control', 'id'=>'id')); ?>

                            <?php echo Form::hidden('table_name',  $result['shipping_methods'][0]->table_name , array('class'=>'form-control', 'id'=>'table_name')); ?>

                           		 <?php $__currentLoopData = $result['description']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $description_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Name')); ?> (<?php echo e($description_data['language_name']); ?>)</label>
                                      <div class="col-sm-10 col-md-4">
                                        <input type="text" name="name_<?=$description_data['languages_id']?>" class="form-control field-validate" value="<?php echo e($description_data['name']); ?>">
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.ShippingmethodName')); ?> (<?php echo e($description_data['language_name']); ?>).</span>          
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                    </div>
                                 
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Rate')); ?></label>
								<div class="col-sm-10 col-md-4">
									<?php echo Form::text('flate_rate',  $result['flate_rate'][0]->flate_rate, array('class'=>'form-control', 'id'=>'flate_rate')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.FlateRateText')); ?></span>
								</div>
							</div>
                            
                            <div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Currency')); ?></label>
								<div class="col-sm-10 col-md-4">
									<?php echo Form::text('currency',  $result['flate_rate'][0]->currency, array('class'=>'form-control', 'id'=>'currency')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.CurrencyText')); ?></span>
								</div>
							</div>	
                            
                            <div class="form-group">
								<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?></label>
								<div class="col-sm-10 col-md-4">
									<select name="status" class="form-control select2">
                                    	<option <?php if($result['shipping_methods'][0]->status == 1): ?> selected <?php endif; ?> value="1" > 
                                       <?php echo e(trans('labels.Active')); ?> </option>
                                        <option <?php if($result['shipping_methods'][0]->status == 0): ?> selected <?php endif; ?> value="0"> <?php echo e(trans('labels.InActive')); ?></option>
                                    </select>
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.FlateRateStatus')); ?></span>
								</div>
							</div>
                            						
							<!-- /.box-body -->
							<div class="box-footer text-center">
								<button type="submit" class="btn btn-primary"><?php echo e(trans('labels.Update')); ?> </button>
								<a href="<?php echo e(URL::to("admin/shippingmethods")); ?>" type="button" class="btn btn-default"><?php echo e(trans('labels.back')); ?></a>
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