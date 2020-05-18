<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.AddImages')); ?> <small><?php echo e(trans('labels.AddImages')); ?>...</small> </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/products')); ?>"><i class="fa fa-database"></i><?php echo e(trans('labels.ListingAllProducts')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.AddImages')); ?></li>
    </ol>
  </section>
  
  <!-- Main content -->
  <section class="content"> 
   
   <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title"><?php echo e(trans('labels.ListingAllProductsImages')); ?> </h3>
            <div class="box-tools pull-right">
            	<button type="button" class="btn btn-block btn-primary" data-toggle="modal" data-target="#addImagesModal">
            	<?php echo e(trans('labels.AddProductImage')); ?></button>
            </div>
          </div>
          
          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
              		
              </div>
            </div>
            <div class="row">
              <div class="col-xs-12">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th><?php echo e(trans('labels.ID')); ?></th>
                      <th><?php echo e(trans('labels.Image')); ?></th>
                      <!--<th>Sort Order</th>-->
                      <th><?php echo e(trans('labels.Description')); ?></th>
                      <th><?php echo e(trans('labels.Action')); ?></th>
                    </tr>
                  </thead>
                  <tbody class="contentImages">
                  	
                  		<?php if(count($result['products_images']) > 0): ?>
							<?php $__currentLoopData = $result['products_images']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $products_image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<tr>
								<td><?php echo e($products_image->id); ?></td>
								<td><img src="<?php echo e(asset('').'/'.$products_image->image); ?>" alt="" width=" 100px"></td>
								<!--<td><?php echo e($products_image->sort_order); ?></td>-->
								<td><?php echo e($products_image->htmlcontent); ?></td>
								<td>
									<a class="badge bg-light-blue editProductImagesModal" products_id = '<?php echo e($products_image->products_id); ?>' id = "<?php echo e($products_image->id); ?>" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a> 
                               	 	<a products_id = '<?php echo e($products_image->products_id); ?>' id = "<?php echo e($products_image->id); ?>" class="badge bg-red deleteProductImagesModal"><i class="fa fa-trash " aria-hidden="true"></i></a></td>
							</tr> 
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						<?php else: ?>
						<tr>
							<td colspan="4">
				    			<?php echo e(trans('labels.ProductsImagesRecordText')); ?>

				    		</td>
					    </tr>
						<?php endif; ?>
                 		
                  		
                  	 
                  </tbody>
                </table>
                
             
                </div>
            </div>
            <div class="box-footer text-center">
				<a href="<?php echo e(URL::to("admin/products")); ?>" class="btn btn-primary"><?php echo e(trans('labels.SaveUpdate')); ?></a>
			</div>
          </div>
          
          		<!-- addImagesModal -->
				<div class="modal fade" id="addImagesModal" tabindex="-1" role="dialog" aria-labelledby="addImagesModalLabel">
				  <div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="addImagesModalLabel"><?php echo e(trans('labels.AddImage')); ?></h4>
					  </div>
					  <?php echo Form::open(array('url' =>'admin/addNewProductImage', 'name'=>'addImageFrom', 'id'=>'addImageFrom', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

                              <?php echo Form::hidden('products_id',  $result['data']['products_id'], array('class'=>'form-control', 'id'=>'products_id')); ?>

                              
                              <?php echo Form::hidden('sort_order',  count($result['products_images'])+1, array('class'=>'form-control', 'id'=>'sort_order')); ?>

                              
					  <div class="modal-body">
						
						   <div class="form-group">
							  <label for="name" class="col-sm-2 col-md-4 control-label"><?php echo e(trans('labels.Image')); ?></label>
							  <div class="col-sm-10 col-md-8">
								  <?php echo Form::file('newImage', array('id'=>'newImage')); ?>

							  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
							  <?php echo e(trans('labels.UploadAdditionalImageText')); ?></span>
							  <br>
							  </div>
							</div>

						   <!--<div class="form-group">
							  <label for="name" class="col-sm-2 col-md-4 control-label">Sort Order</label>
							  <div class="col-sm-10 col-md-8">
								   <?php echo Form::text('sort_order',  count($result['products_images'])+1, array('class'=>'form-control', 'id'=>'sort_order')); ?>

							  </div>
							</div>-->
							

							<div class="form-group">
							  <label for="name" class="col-sm-2 col-md-4 control-label"><?php echo e(trans('labels.Description')); ?> </label>
							  <div class="col-sm-10 col-md-8">
								 <?php echo Form::textarea('htmlcontent',  '', array('class'=>'form-control', 'id'=>'htmlcontent', 'colspan'=>'3' )); ?>

							     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
							     <?php echo e(trans('labels.ImageDescription')); ?>

							     </span>
							 
							  </div>
							</div>
                            <div class="alert alert-danger addError" style="display: none; margin-bottom: 0;" role="alert"><i class="icon fa fa-ban"></i> <?php echo e(trans('labels.ChooseImageText')); ?> </div>
                             
					  </div>
					  <div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?> </button>
						<button type="button" class="btn btn-primary" id="addImage"><?php echo e(trans('labels.AddImage')); ?></button>
					  </div>
					  <?php echo Form::close(); ?>

					</div>
				  </div>
				</div>
         
         	<!-- editProductImagesModal -->
				<div class="modal fade" id="editProductImagesModal" tabindex="-1" role="dialog" aria-labelledby="editProductImagesModalLabel">
				  <div class="modal-dialog" role="document">
					<div class="modal-content editImageContent">
					  
					</div>
				  </div>
				</div>
        
         	<!-- deleteProductImageModal -->
				<div class="modal fade" id="deleteProductImageModal" tabindex="-1" role="dialog" aria-labelledby="deleteProductImageModalLabel">
				  <div class="modal-dialog" role="document">
					<div class="modal-content deleteImageEmbed">
					  
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
</div>
    
    <!-- /.row --> 
  </section>
  <!-- /.content -->

<?php $__env->stopSection(); ?> 
<?php echo $__env->make('admin.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>