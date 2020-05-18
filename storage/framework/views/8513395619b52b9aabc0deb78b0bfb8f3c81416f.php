<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	<h4 class="modal-title" id="editProductImagesModalLabel"><?php echo e(trans('labels.EditImage')); ?></h4>
</div>
  <?php echo Form::open(array('url' =>'admin/addNewProductAttribute', 'name'=>'editImageFrom', 'id'=>'editImageFrom', 'method'=>'post', 'class' => 'form-horizontal', 'enctype'=>'multipart/form-data')); ?>

	  <?php echo Form::hidden('products_id',  $result[0]->products_id, array('class'=>'form-control', 'id'=>'products_id')); ?>

	  <?php echo Form::hidden('id',  $result[0]->id, array('class'=>'form-control', 'id'=>'id')); ?>

	  <?php echo Form::hidden('oldImage',  $result[0]->image , array('id'=>'oldImage')); ?>

	  
	  <?php echo Form::hidden('sort_order',  $result[0]->sort_order, array('class'=>'form-control', 'id'=>'sort_order')); ?>

<div class="modal-body">

   <div class="form-group">
	  <label for="name" class="col-sm-2 col-md-4 control-label"><?php echo e(trans('labels.Image')); ?></label>
	  <div class="col-sm-10 col-md-8">
		  <?php echo Form::file('newImage', array('id'=>'newImage')); ?>

	  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.UploadAdditionalImageText')); ?></span>
	  <br>
		  <img src="<?php echo e(asset('').$result[0]->image); ?>" alt="" width=" 100px">
	  </div>
	</div>

   <!--<div class="form-group">
	  <label for="name" class="col-sm-2 col-md-4 control-label">Sort Order</label>
	  <div class="col-sm-10 col-md-8">
		   <?php echo Form::text('sort_order',  $result[0]->sort_order, array('class'=>'form-control', 'id'=>'sort_order')); ?>

	  </div>
	</div>-->


	<div class="form-group">
	  <label for="name" class="col-sm-2 col-md-4 control-label"><?php echo e(trans('labels.Description')); ?></label>
	  <div class="col-sm-10 col-md-8">
		 <?php echo Form::textarea('htmlcontent',  $result[0]->htmlcontent, array('class'=>'form-control', 'id'=>'htmlcontent', 'colspan'=>'3' )); ?>

	  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;"><?php echo e(trans('labels.ImageDescription')); ?></span>
	  
	  </div>
	</div>
	<div class="alert alert-danger addError" style="display: none; margin-bottom: 0;" role="alert"><i class="icon fa fa-ban"></i><?php echo e(trans('labels.ImageDescription')); ?></div>

</div>
<div class="modal-footer">
	<button type="button" class="btn btn-default" data-dismiss="modal"><?php echo e(trans('labels.Close')); ?></button>
	<button type="button" class="btn btn-primary" id="updateProductImage"><?php echo e(trans('labels.Update')); ?></button>
</div>
  <?php echo Form::close(); ?>