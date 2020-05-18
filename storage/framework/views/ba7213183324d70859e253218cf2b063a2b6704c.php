<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.Products')); ?> <small><?php echo e(trans('labels.ListingAllProducts')); ?>...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li class="active"> <?php echo e(trans('labels.Products')); ?></li>
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
            <h3 class="box-title"><?php echo e(trans('labels.ListingAllProducts')); ?> </h3>
            <div class="box-tools pull-right">
            	<a href="<?php echo e(URL::to('admin/addproduct')); ?>" type="button" class="btn btn-block btn-primary"><?php echo e(trans('labels.AddNewProducts')); ?></a>
            </div>
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
                    <form class="form-inline form-validate" enctype="multipart/form-data">
                      <div class="form-group">
                      	<h5 style="font-weight: bold; padding:0px 5px; "><?php echo e(trans('labels.FilterByCategory/Products')); ?>:</h5>
                      </div>
                      <div class="form-group" style="min-width: 220px">
                        <select class="form-control" name="categories_id" style="width: 100%">
                        	<option value=""><?php echo e(trans('labels.SelectCategory')); ?></option>
                            <?php $__currentLoopData = $results['subCategories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$subCategories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            	<option value="<?php echo e($subCategories->id); ?>"
                                	<?php if(isset($_REQUEST['categories_id']) and !empty($_REQUEST['categories_id'])): ?>
                                    	<?php if( $subCategories->id == $_REQUEST['categories_id']): ?>
                                        	selected
                                        <?php endif; ?>
                                    <?php endif; ?>
                                ><?php echo e($subCategories->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <input type="text" name="product" class="form-control" id="exampleInputPassword3"
                            <?php if(isset($_REQUEST['product']) and !empty($_REQUEST['product'])): ?>
                                value="<?php echo e($_REQUEST['product']); ?>"            
                            <?php endif; ?>
                         placeholder="Products">
                      </div>
                      <button type="submit" class="btn btn-success"><?php echo e(trans('labels.Search')); ?></button>
                      <a href="<?php echo e(URL::to('admin/products')); ?>" class="btn btn-danger"><?php echo e(trans('labels.ClearSearch')); ?></a>
                    </form>
                </div><br><br><br>

             </div>
            
            <div class="row">
              <div class="col-xs-12">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th><?php echo e(trans('labels.ID')); ?></th>
                      <th><?php echo e(trans('labels.Image')); ?></th>
                      <th><?php echo e(trans('labels.ProductDescription')); ?></th>
                      <th><?php echo e(trans('labels.AddedLastModifiedDate')); ?></th>
                      <th></th>
                    </tr>
                  </thead>
                   <tbody>
                   <?php if(count($results['products'])>0): ?>
                    <?php $__currentLoopData = $results['products']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    	<tr>
                            <td><?php echo e($product->products_id); ?></td>
                            <td><img src="<?php echo e(asset('').'/'.$product->products_image); ?>" alt="" width=" 100px" height="100px"></td>
                            <td width="45%">
                            	<strong><?php echo e($product->products_name); ?> <?php if(!empty($product->products_model)): ?> ( <?php echo e($product->products_model); ?> ) <?php endif; ?></strong><br>
                                
                                <strong><?php echo e(trans('labels.Product Type')); ?>:</strong>
                                	<?php if($product->products_type==0): ?>
                                    	<?php echo e(trans('labels.Simple')); ?>

                                    <?php elseif($product->products_type==1): ?>
                                    	<?php echo e(trans('labels.Variable')); ?>

                                    <?php elseif($product->products_type==2): ?>
                                    	<?php echo e(trans('labels.External')); ?>

                                    <?php endif; ?>
                                <br>
                                <?php if(!empty($product->manufacturers_name)): ?>
                                <strong><?php echo e(trans('labels.Manufacturer')); ?>:</strong> <?php echo e($product->manufacturers_name); ?><br>
                                <?php endif; ?>
                                <strong><?php echo e(trans('labels.Price')); ?>: </strong>     <?php echo e($results['currency'][19]->value); ?><?php echo e($product->products_price); ?><br>
                                <strong><?php echo e(trans('labels.Weight')); ?>: </strong>  <?php echo e($product->products_weight); ?><?php echo e($product->products_weight_unit); ?><br>
                                <strong><?php echo e(trans('labels.Viewed')); ?>: </strong>  <?php echo e($product->products_viewed); ?><br>
                                <?php if(!empty($product->specials_id)): ?>
								<strong class="badge bg-light-blue"><?php echo e(trans('labels.Special Product')); ?></strong><br>
                              	<strong><?php echo e(trans('labels.SpecialPrice')); ?>: </strong>  <?php echo e($product->specials_products_price); ?><br>
                              	  <?php if(!empty($product->specials_id)>0): ?>
                              	  <strong><?php echo e(trans('labels.ExpiryDate')); ?>: </strong>  
                                  <?php if($product->expires_date > time()): ?>
                                  	 <?php echo e(date('d/m/Y', $product->expires_date)); ?>

                                   <?php else: ?>
                                   	<strong class="badge bg-red"><?php echo e(trans('labels.Expired')); ?></strong>
                                   
                                    <?php endif; ?>
                                  <br>
                              	  <?php endif; ?>
                                <?php endif; ?>
                            </td>
                            <td>
                             	<strong><?php echo e(trans('labels.AddedDate')); ?>: </strong> <?php echo e($product->products_date_added); ?><br>
                           		<strong><?php echo e(trans('labels.ModifiedDate')); ?>: </strong><?php echo e($product->products_last_modified); ?>

                            </td>
                           
                            <td>
                            <ul class="nav table-nav">
                              <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                  <?php echo e(trans('labels.Action')); ?> <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="editproduct/<?php echo e($product->products_id); ?>"><?php echo e(trans('labels.EditProduct')); ?></a></li>
                                    <?php if($product->products_type==1): ?>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="addproductattribute/<?php echo e($product->products_id); ?>"><?php echo e(trans('labels.ProductAttributes')); ?></a></li>
                                    <?php endif; ?>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="addinventory/<?php echo e($product->products_id); ?>"><?php echo e(trans('labels.addinventory')); ?></a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" href="addproductimages/<?php echo e($product->products_id); ?>"><?php echo e(trans('labels.ProductImages')); ?></a></li>
                                    <li role="presentation" class="divider"></li>
                                    <li role="presentation"><a role="menuitem" tabindex="-1" id="deleteProductId" products_id="<?php echo e($product->products_id); ?>"><?php echo e(trans('labels.DeleteProduct')); ?></a></li>
                                </ul>
                              </li>
                            </ul>
                            </td>
                        </tr>
                     <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                   <?php else: ?>
                   		<tr>
                            <td colspan="5"><?php echo e(trans('labels.NoRecordFound')); ?></td>
                       </tr>
                   <?php endif; ?> 
                  </tbody>
                </table>
                <div class="col-xs-12 text-right">
                	<?php echo e($results['products']->links('vendor.pagination.default')); ?>

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
    
    <!-- deleteProductModal -->
	<div class="modal fade" id="deleteproductmodal" tabindex="-1" role="dialog" aria-labelledby="deleteProductModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
		  <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			<h4 class="modal-title" id="deleteProductModalLabel"><?php echo e(trans('labels.DeleteProduct')); ?></h4>
		  </div>
		  <?php echo Form::open(array('url' =>'admin/deleteproduct', 'name'=>'deleteProduct', 'id'=>'deleteProduct', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

				  <?php echo Form::hidden('action',  'delete', array('class'=>'form-control')); ?>

				  <?php echo Form::hidden('products_id',  '', array('class'=>'form-control', 'id'=>'products_id')); ?>

		  <div class="modal-body">						
			  <p><?php echo e(trans('labels.DeleteThisProductDiloge')); ?>?</p>
		  </div>
		  <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
			<button type="submit" class="btn btn-primary" id="deleteProduct"><?php echo e(trans('labels.DeleteProduct')); ?></button>
		  </div>
		  <?php echo Form::close(); ?>

		</div>
	  </div>
	</div>
    <!-- /.row --> 
    
    <!-- Main row --> 
    
    <!-- /.row --> 
  </section>
  <!-- /.content --> 
</div>
<?php $__env->stopSection(); ?> 
<?php echo $__env->make('admin.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>