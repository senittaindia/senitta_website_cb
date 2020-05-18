<?php $__env->startSection('content'); ?>
<section class="site-content">
    <div class="container">
        <div class="breadcum-area">
            <div class="breadcum-inner">
                <h3><?php echo app('translator')->getFromJson('website.My Orders'); ?></h3>
                <ol class="breadcrumb">
                    
                    <li class="breadcrumb-item"><a href="<?php echo e(URL::to('/')); ?>"><?php echo app('translator')->getFromJson('website.Home'); ?></a></li>
                     <li class="breadcrumb-item active"><?php echo app('translator')->getFromJson('website.My Orders'); ?></li>
                </ol>
            </div>
        </div>
        
        <div class="my-order-area">
        	
        	
        	<div class="row">
            	<div class="col-12 col-lg-3 spaceright-0">
                    <?php echo $__env->make('common.sidebar_account', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
                </div>
            	<div class="col-12 col-lg-9 new-customers">
                	
                	<div class="col-12 spaceright-0">
                        <div class="heading">
                            <h2><?php echo app('translator')->getFromJson('website.My Orders'); ?></h2>
                            <hr>
                        </div>
                        
                        <div class="my-orders">
        
                        <?php if(session()->has('message')): ?>
                            <div class="alert alert-success alert-dismissible" role="alert">
                                 <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                 <?php echo e(session()->get('message')); ?>

                            </div>
                            
                        <?php endif; ?>
                        
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th><?php echo app('translator')->getFromJson('website.Order ID'); ?></th>
                                        <th><?php echo app('translator')->getFromJson('website.Order Date'); ?></th>
                                        <th><?php echo app('translator')->getFromJson('website.Price'); ?></th>
                                        <th><?php echo app('translator')->getFromJson('website.Status'); ?></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php if(count($result['orders']) > 0): ?>
                                <?php $__currentLoopData = $result['orders']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $orders): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($orders->orders_id); ?></td>
                                        <td><?php echo e(date('d/m/Y', strtotime($orders->date_purchased))); ?></td>
                                        <td><?php echo e($orders->currency); ?><?php echo e($orders->order_price); ?></td>
                                        <td>                                        
                                            <?php if($orders->orders_status_id == '2'): ?>
                                                <span class="badge badge-success"><?php echo e($orders->orders_status); ?></span>
                                                &nbsp;&nbsp;/&nbsp;&nbsp;
                                         
                                                <form action="<?php echo e(URL::to('/updatestatus')); ?>" method="post" onSubmit="return returnOrder();" style="display: inline-block">
                                                <input type="hidden" name="orders_id" value="<?php echo e($orders->orders_id); ?>">
                                                <input type="hidden" name="orders_status_id" value="4">                                                
                                                <button type="submit" class="badge badge-danger" style="text-transform:capitalize; cursor:pointer"><?php echo e($orders->orders_status); ?>) </button>
                                                </form>
                                            <?php else: ?>
                                           	 	<?php if($orders->orders_status_id == '3'): ?>
                                             		<span class="badge badge-danger"><?php echo e($orders->orders_status); ?> </span>
                                             	<?php elseif($orders->orders_status_id == '4'): ?>
                                             		<span class="badge badge-danger"><?php echo e($orders->orders_status); ?> </span>                                                <?php else: ?>
                                                <span class="badge badge-primary"><?php echo e($orders->orders_status); ?></span> 
                                                &nbsp;&nbsp;/&nbsp;&nbsp;
                                         
                                                <form action="<?php echo e(URL::to('/updatestatus')); ?>" method="post" onSubmit="return cancelOrder();" style="display: inline-block">
                                                <input type="hidden" name="orders_id" value="<?php echo e($orders->orders_id); ?>">
                                                <input type="hidden" name="orders_status_id" value="3">
                                                <button type="submit" class="badge badge-danger" style="text-transform:capitalize; cursor:pointer"><?php echo app('translator')->getFromJson('website.cancel order'); ?> </button>
                                                </form>
                                                
                                                <?php endif; ?>                                           
                                            <?php endif; ?>
                                        </td>
                                        <td align="right"><a class="btn btn-sm btn-dark" href="<?php echo e(URL::to('/view-order/'.$orders->orders_id)); ?>"><?php echo app('translator')->getFromJson('website.View Order'); ?></a></td>
                                    </tr>              
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php else: ?>
                                    <tr>
                                        <td colspan="4"><?php echo app('translator')->getFromJson('website.No order is placed yet'); ?>
                                        </td>
                                    </tr>
                                <?php endif; ?>				
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>	
            </div>    
        </div>
	</div>
</section>	
<?php $__env->stopSection(); ?> 	



<?php echo $__env->make('layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>