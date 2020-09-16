
<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.shppingbyweight')); ?><small><?php echo e(trans('labels.shppingbyweight')); ?>...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/shippingmethods')); ?>"><i class="fa fa-dashboard"></i><?php echo e(trans('labels.ShippingMethods')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.shppingbyweight')); ?></li>
    </ol>
  </section>
  
  <!-- Main content -->
  <section class="content">   
    
    <!-- /.row -->
    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"><?php echo e(trans('labels.shppingbyweight')); ?></h3>
          </div>
          
          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		<div class="box box-info">
                        <!--<div class="box-header with-border">
                          <h3 class="box-title">Setting</h3>
                        </div>-->
                        <!-- /.box-header -->
                        <!-- form start -->                        
                         <div class="box-body">
                          <?php if( count($errors) > 0): ?>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="alert alert-success" role="alert">
                                      <span class="icon fa fa-check" aria-hidden="true"></span>
                                      <span class="sr-only"><?php echo e(trans('labels.Setting')); ?>:</span>
                                      <?php echo e($error); ?></div>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          <?php endif; ?>
                        
                            <?php echo Form::open(array('url' =>'admin/updateShppingWeightPrice', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                            
                            <hr>
                            
                            <div class="form-group">
                            
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight From')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_from_0', $result['products_shipping'][0]->weight_from, array('class'=>'form-control', 'id'=>'weight_from_0')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight To')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_to_0',  $result['products_shipping'][0]->weight_to, array('class'=>'form-control', 'id'=>'weight_to_0')); ?>

                              </div>
                              
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight Price')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_price_0',  $result['products_shipping'][0]->weight_price, array('class'=>'form-control', 'id'=>'weight_price_0')); ?>

                              </div>
                              
                            </div>
                            <hr>
                            
                            <div class="form-group">
                            
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight From')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_from_1', $result['products_shipping'][1]->weight_from, array('class'=>'form-control', 'id'=>'weight_from_1')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight To')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_to_1',  $result['products_shipping'][1]->weight_to, array('class'=>'form-control', 'id'=>'weight_to_1')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight Price')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_price_1',  $result['products_shipping'][1]->weight_price, array('class'=>'form-control', 'id'=>'weight_price_1')); ?>

                              </div>
                              
                              
                            </div>
                            <hr>
                            
                            <div class="form-group">
                            
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight From')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_from_2', $result['products_shipping'][2]->weight_from, array('class'=>'form-control', 'id'=>'weight_from_2')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight To')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_to_2',  $result['products_shipping'][2]->weight_to, array('class'=>'form-control', 'id'=>'weight_to_2')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight Price')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_price_2',  $result['products_shipping'][2]->weight_price, array('class'=>'form-control', 'id'=>'weight_price_2')); ?>

                              </div>
                              
                            </div>
                            <hr>
                            
                            <div class="form-group">
                            
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight From')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_from_3', $result['products_shipping'][3]->weight_from, array('class'=>'form-control', 'id'=>'weight_from_3')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight To')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_to_3',  $result['products_shipping'][3]->weight_to, array('class'=>'form-control', 'id'=>'weight_to_3')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight Price')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_price_3',  $result['products_shipping'][3]->weight_price, array('class'=>'form-control', 'id'=>'weight_price_3')); ?>

                              </div>
                              
                            </div>
                            <hr>
                            
                            <div class="form-group">
                            
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Limit Upto')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_from_4', $result['products_shipping'][4]->weight_from, array('class'=>'form-control', 'id'=>'weight_from_4')); ?>

                              </div>
                              
                              <label style="visibility:hidden" for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight To')); ?></label>
                              <div  style="visibility:hidden"  class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_to_4',  $result['products_shipping'][4]->weight_to, array('class'=>'form-control', 'id'=>'weight_to_4')); ?>

                              </div>
                              
                              <label for="name" class="col-sm-2 col-md-2 control-label"><?php echo e(trans('labels.Weight Price')); ?></label>
                              <div class="col-sm-10 col-md-2">
                                <?php echo Form::text('weight_price_4',  $result['products_shipping'][4]->weight_price, array('class'=>'form-control', 'id'=>'weight_price_4')); ?>

                              </div>
                              
                              
                              
                            </div>                           
                            
                            
                              <!-- /.box-body -->
                            <div class="box-footer">
								<a href="<?php echo e(URL::to('admin/shippingmethods')); ?>" type="button" class="btn btn-default pull-left"> <i class="fa fa-angle-left"></i> <?php echo e(trans('labels.back')); ?></a>
                            	<button type="submit" class="btn btn-primary pull-right"><?php echo e(trans('labels.Update')); ?></button>
                            </div>
                            
                              
                              <!-- /.box-footer -->
                            <?php echo Form::close(); ?></div>
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