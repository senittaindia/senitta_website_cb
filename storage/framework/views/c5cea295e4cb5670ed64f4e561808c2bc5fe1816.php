<?php $__env->startSection('content'); ?>
<div class="content-wrapper"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1> <?php echo e(trans('labels.AddProduct')); ?> <small><?php echo e(trans('labels.AddProduct')); ?>...</small> </h1>
    <ol class="breadcrumb">
       <li><a href="<?php echo e(URL::to('admin/dashboard/this_month')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.breadcrumb_dashboard')); ?></a></li>
      <li><a href="<?php echo e(URL::to('admin/products')); ?>"><i class="fa fa-dashboard"></i> <?php echo e(trans('labels.ListingAllProducts')); ?></a></li>
      <li class="active"><?php echo e(trans('labels.AddProduct')); ?></li>
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
            <h3 class="box-title"><?php echo e(trans('labels.AddNewProduct')); ?> </h3>
          </div>
          
          <!-- /.box-header -->
          <div class="box-body">
            <div class="row">
              <div class="col-xs-12">
                    <div class="box box-info">
                        <!-- form start -->                        
                         <div class="box-body">
                          <?php if( count($errors) > 0): ?>
                            <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="alert alert-danger" role="alert">
                                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                                    <span class="sr-only"><?php echo e(trans('labels.Error')); ?>:</span>
                                    <?php echo e($error); ?>

                                </div>
                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          <?php endif; ?>
                        
                            <?php echo Form::open(array('url' =>'admin/addnewproduct', 'method'=>'post', 'class' => 'form-horizontal form-validate', 'enctype'=>'multipart/form-data')); ?>             
                            	<div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Product Type')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control field-validate prodcust-type" name="products_type" onChange="prodcust_type();">
                                          <option value=""><?php echo e(trans('labels.Choose Type')); ?></option> 
                                          <option value="0"><?php echo e(trans('labels.Simple')); ?></option>
                                          <option value="1"><?php echo e(trans('labels.Variable')); ?></option>
                                          <option value="2"><?php echo e(trans('labels.External')); ?></option>
                                      </select><span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.Product Type Text')); ?>.</span>
                                  </div>
                                </div>
                                
                                <hr>                                           
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Category')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                  <?php if(!empty(session('categories_id'))): ?>
										<?php 
                                        $cat_array = explode(',', session('categories_id'));                                        
                                         ?>
                                        <ul class="list-group list-group-root well">    
                                          <?php $__currentLoopData = $result['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>   
                                          <?php if(in_array($categories->id,$cat_array)): ?>                                 
                                          <li href="#" class="list-group-item"><label style="width:100%"><input id="categories_<?=$categories->id?>" type="checkbox" class=" required_one categories" name="categories[]" value="<?php echo e($categories->id); ?>" > <?php echo e($categories->name); ?></label></li>
                                          <?php endif; ?>
                                              <?php if(!empty($categories->sub_categories)): ?>
                                              <ul class="list-group">
                                                    	<li class="list-group-item" >
                                                    <?php $__currentLoopData = $categories->sub_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php if(in_array($sub_category->sub_id,$cat_array)): ?>  
                                                    <label><input type="checkbox" name="categories[]" class="required_one sub_categories sub_categories_<?=$categories->id?>" parents_id = '<?=$categories->id?>' value="<?php echo e($sub_category->sub_id); ?>"> <?php echo e($sub_category->sub_name); ?></label> <?php endif; ?> <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?></li>
                                                    
                                              </ul>
                                              <?php endif; ?>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                                          
                                        </ul>                                           
                                  <?php else: ?>
                                   <ul class="list-group list-group-root well">    
                                      <?php $__currentLoopData = $result['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                                    
                                      <li href="#" class="list-group-item"><label style="width:100%"><input id="categories_<?=$categories->id?>" type="checkbox" class=" required_one categories" name="categories[]" value="<?php echo e($categories->id); ?>" > <?php echo e($categories->name); ?></label></li>
                                          <?php if(!empty($categories->sub_categories)): ?>
                                          <ul class="list-group">
                                                    <li class="list-group-item" >
                                                <?php $__currentLoopData = $categories->sub_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?><label><input type="checkbox" name="categories[]" class="required_one sub_categories sub_categories_<?=$categories->id?>" parents_id = '<?=$categories->id?>' value="<?php echo e($sub_category->sub_id); ?>"> <?php echo e($sub_category->sub_name); ?></label><?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?></li>
                                                
                                          </ul>
                                          <?php endif; ?>
                                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                                          
                                    </ul>   
                                  <?php endif; ?>
                                                                               
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.ChooseCatgoryText')); ?>.</span>
                                      <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                  </div>
                                </div>
                                                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Manufacturers')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="manufacturers_id">
                                          <option value=""><?php echo e(trans('labels.ChooseManufacturers')); ?></option>                                      	
                                         <?php $__currentLoopData = $result['manufacturer']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $manufacturer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                          <option value="<?php echo e($manufacturer->id); ?>"><?php echo e($manufacturer->name); ?></option>
                                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      </select><span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.ChooseManufacturerText')); ?>.</span>
                                  </div>
                                </div>
                                <hr>
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FlashSale')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                       <select class="form-control" onChange="showFlash()" name="isFlash" id="isFlash">
                                          <option value="no"><?php echo e(trans('labels.No')); ?></option>
                                          <option value="yes"><?php echo e(trans('labels.Yes')); ?></option>
                                      </select>
                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                  <?php echo e(trans('labels.FlashSaleText')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="flash-container" style="display: none;">
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FlashSalePrice')); ?></label>
                                      <div class="col-sm-10 col-md-4">
                                        <input  class="form-control" type="text" name="flash_sale_products_price" id="flash_sale_products_price" value="">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                        <?php echo e(trans('labels.FlashSalePriceText')); ?></span>
                                        <span class="help-block hidden"><?php echo e(trans('labels.FlashSalePriceText')); ?></span>
                                      </div>
                                    </div>
                                    
                                    <div class="form-group">                                    
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FlashSaleDate')); ?></label>
                                      <div class="col-sm-10 col-md-2">
                                        <input  class="form-control datepicker" readonly type="text" name="flash_start_date" id="flash_start_date" readonly value="">     
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.FlashSaleDateText')); ?></span>                               
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                      <div class="col-sm-10 col-md-2 bootstrap-timepicker">
                                        <input type="text" class="form-control timepicker" name="flash_start_time" readonly id="flash_start_time" value="" >
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                    </div>
                                    
                                    <div class="form-group">                                    
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.FlashExpireDate')); ?></label>
                                      <div class="col-sm-10 col-md-2">
                                        <input  class="form-control datepicker" readonly type="text" readonly name="flash_expires_date" id="flash_expires_date" value="">     
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      	<?php echo e(trans('labels.FlashExpireDateText')); ?></span>                               
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                      <div class="col-sm-10 col-md-2 bootstrap-timepicker">
                                        <input type="text" class="form-control timepicker" readonly name="flash_end_time" id="flash_end_time" value="" >
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?></label>
                                      <div class="col-sm-10 col-md-4">
                                          <select class="form-control" name="flash_status">
                                              <option value="1"><?php echo e(trans('labels.Active')); ?></option>
                                              <option value="0"><?php echo e(trans('labels.Inactive')); ?></option>
                                          </select>
                                          <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                          <?php echo e(trans('labels.ActiveFlashSaleProductText')); ?></span>									  
                                      </div>
                                    </div>
                                </div>
                                
                                <hr>
                                <div class="form-group special-link">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Special')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                       <select class="form-control" onChange="showSpecial()" name="isSpecial" id="isSpecial">
                                          <option value="no"><?php echo e(trans('labels.No')); ?></option>
                                          <option value="yes"><?php echo e(trans('labels.Yes')); ?></option>
                                      </select>
                                  <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                  <?php echo e(trans('labels.SpecialProductText')); ?>.</span>
                                  </div>
                                </div>
                                
                                <div class="special-container" style="display: none;">
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.SpecialPrice')); ?></label>
                                      <div class="col-sm-10 col-md-4">
                                        <input  class="form-control" type="text" name="specials_new_products_price" id="special-price" value="">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                        <?php echo e(trans('labels.SpecialPriceTxt')); ?>.</span>
                                        <span class="help-block hidden"><?php echo e(trans('labels.SpecialPriceNote')); ?>.</span>
                                      </div>
                                    </div>
                                    <div class="form-group">                                    
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ExpiryDate')); ?></label>                                      <div class="col-sm-10 col-md-4">
                                        <input  class="form-control datepicker" readonly readonly type="text" name="expires_date" id="expiry-date" value="">
                                        <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                        <?php echo e(trans('labels.SpecialExpiryDateTxt')); ?>

                                        </span>
                                        <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                    </div>
                                    <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?></label>
                                      <div class="col-sm-10 col-md-4">
                                          <select class="form-control" name="status">
                                              <option value="1"><?php echo e(trans('labels.Active')); ?></option>
                                              <option value="0"><?php echo e(trans('labels.Inactive')); ?></option>
                                          </select>
                                          <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                          <?php echo e(trans('labels.ActiveSpecialProductText')); ?>.</span>									  
                                      </div>
                                    </div>
                                </div>
                                
                                <hr>
                                
                              <?php $__currentLoopData = $result['languages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languages): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                
                                <div class="form-group">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ProductName')); ?> (<?php echo e($languages->name); ?>)</label>
                                      <div class="col-sm-10 col-md-4">
                                            <input type="text" name="products_name_<?=$languages->languages_id?>" class="form-control field-validate">
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                           <?php echo e(trans('labels.EnterProductNameIn')); ?> <?php echo e($languages->name); ?> </span>
                                      <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                </div>
                                
                                <div class="form-group external_link" style="display: none">
                                      <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.External URL')); ?> (<?php echo e($languages->name); ?>)</label>
                                      <div class="col-sm-10 col-md-4">
                                            <input type="text" name="products_url_<?=$languages->languages_id?>" class="form-control products_url">
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                           <?php echo e(trans('labels.External URL Text')); ?> <?php echo e($languages->name); ?> </span>
                                      <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                      </div>
                                </div>
                                                                
                                <div class="form-group">
                                	<label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Description')); ?> (<?php echo e($languages->name); ?>)</label>
                                    <div class="col-sm-10 col-md-8">
                                    	<textarea id="editor<?=$languages->languages_id?>" name="products_description_<?=$languages->languages_id?>"class="form-control" rows="5"></textarea>
                                    	<span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                       <?php echo e(trans('labels.EnterProductDetailIn')); ?> <?php echo e($languages->name); ?></span>
                                      </div>
                                </div>
                                                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.left banner')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                  	<input type="file" name="products_left_banner_<?=$languages->languages_id?>" id="products_left_banner_<?=$languages->languages_id?>">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner text')); ?></span>
                                  </div>
                                </div>                                                                
                                                               
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.banner start date')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                    <input class="form-control datepicker" readonly type="text" name="products_left_banner_start_date_<?=$languages->languages_id?>" id="products_left_banner_start_date_<?=$languages->languages_id?>">
                                    
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner start date text')); ?></span>
                                  </div>
                                </div>
                                                               
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.banner expire date')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                    <input class="form-control datepicker" readonly type="text" name="products_left_banner_expire_date_<?=$languages->languages_id?>" id="products_left_banner_expire_date_<?=$languages->languages_id?>">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner expire date text')); ?></span>
                                  </div>
                                </div>
                                                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.right banner')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                  	<input type="file" name="products_right_banner_<?=$languages->languages_id?>" id="products_right_banner_<?=$languages->languages_id?>">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner text')); ?></span>
                                  </div>
                                </div>
                                                               
                                                               
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.banner start date')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                    <input class="form-control datepicker" readonly type="text" name="products_right_banner_start_date_<?=$languages->languages_id?>" id="products_right_banner_start_date_<?=$languages->languages_id?>">
                                    
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner start date text')); ?></span>
                                  </div>
                                </div>
                                                               
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.banner expire date')); ?> (<?php echo e($languages->name); ?>)</label>
                                  <div class="col-sm-10 col-md-4">
                                    <input class="form-control datepicker" readonly type="text" name="products_right_banner_expire_date_<?=$languages->languages_id?>" id="products_right_banner_expire_date_<?=$languages->languages_id?>">
                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.banner expire date text')); ?></span>
                                  </div>
                                </div>
                                
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                
                                <div class="form-group" id="tax-class">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.TaxClass')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control field-validate" name="tax_class_id">
                                        <option selected><?php echo e(trans('labels.SelectTaxClass')); ?></option>
                                         <?php $__currentLoopData = $result['taxClass']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $taxClass): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                          <option value="<?php echo e($taxClass->tax_class_id); ?>"><?php echo e($taxClass->tax_class_title); ?></option>
                                         <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                      </select>                                      
                                     <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                     <?php echo e(trans('labels.ChooseTaxClassForProductText')); ?>

                                     </span>
                                      <span class="help-block hidden"><?php echo e(trans('labels.SelectProductTaxClass')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ProductsPrice')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('products_price',  '', array('class'=>'form-control number-validate', 'id'=>'products_price')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.ProductPriceText')); ?>

                                    </span>                                  
                                    <span class="help-block hidden"><?php echo e(trans('labels.ProductPriceText')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Min Order Limit')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('products_min_order',  '1', array('class'=>'form-control', 'id'=>'products_min_order')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.Min Order Limit Text')); ?>

                                    </span>                                  
                                    <span class="help-block hidden"><?php echo e(trans('labels.Min Order Limit Text')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Max Order Limit')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('products_max_stock',  '0', array('class'=>'form-control', 'id'=>'products_max_stock')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.Max Order Limit Text')); ?>

                                    </span>                                  
                                    <span class="help-block hidden"><?php echo e(trans('labels.Max Order Limit Text')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ProductsWeight')); ?></label>
                                  <div class="col-sm-10 col-md-2">
                                    <?php echo Form::text('products_weight',  '', array('class'=>'form-control number-validate', 'id'=>'products_weight')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.RequiredTextForWeight')); ?>

                                    </span>
                                  </div>
                                  <div class="col-sm-10 col-md-2" style="padding-left: 0;">
                                      <select class="form-control" name="products_weight_unit">
                                      	<?php if(count($result['units'])>0): ?>
                                              <?php $__currentLoopData = $result['units']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $unit): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                              <option value="<?php echo e($unit->unit_name); ?>"><?php echo e($unit->unit_name); ?></option>
                                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                      </select>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.ProductsModel')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::text('products_model',  '', array('class'=>'form-control', 'id'=>'products_model')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.ProductsModelText')); ?>

                                    </span>
                                    <span class="help-block hidden"><?php echo e(trans('labels.textRequiredFieldMessage')); ?></span>
                                  </div>
                                </div>
                                                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Image')); ?></label>
                                  <div class="col-sm-10 col-md-4">
                                    <?php echo Form::file('products_image', array('id'=>'products_image', 'class'=>'field-validate')); ?>

                                    <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                    <?php echo e(trans('labels.UploadProductImageText')); ?></span>
                                  </div>
                                </div>
                                                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.IsFeature')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="is_feature">
                                          <option value="0"><?php echo e(trans('labels.No')); ?></option>
                                          <option value="1"><?php echo e(trans('labels.Yes')); ?></option>                                       
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.IsFeatureProuctsText')); ?></span>
                                  </div>
                                </div>
                                
                                <div class="form-group">
                                  <label for="name" class="col-sm-2 col-md-3 control-label"><?php echo e(trans('labels.Status')); ?> </label>
                                  <div class="col-sm-10 col-md-4">
                                      <select class="form-control" name="products_status">
                                          <option value="1"><?php echo e(trans('labels.Active')); ?></option>
                                          <option value="0"><?php echo e(trans('labels.Inactive')); ?></option>                                       
                                      </select>
                                      <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">
                                      <?php echo e(trans('labels.SelectStatus')); ?></span>
                                  </div>
                                </div>
                                
                              <!-- /.box-body -->
                              <div class="box-footer text-center">
                                <button type="submit" class="btn btn-primary pull-right"  id="attribute-btn"><?php echo e(trans('labels.Add Atrributes')); ?> <i class="fa fa-angle-right 2x"></i></button>
								  
                                <button type="submit" class="btn btn-primary pull-right"  id="normal-btn" style="display: none"><?php echo e(trans('labels.addinventory')); ?> <i class="fa fa-angle-right 2x"></i></button>
								  
                                <button type="submit" class="btn btn-primary pull-right"  id="external-btn" style="display: none"><?php echo e(trans('labels.AddProducts')); ?> <i class="fa fa-angle-right 2x"></i></button>
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
<script src="<?php echo asset('resources/views/admin/plugins/jQuery/jQuery-2.2.0.min.js'); ?>"></script>
<script type="text/javascript">
		$(function () {
			
			//for multiple languages
			<?php $__currentLoopData = $result['languages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languages): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				// Replace the <textarea id="editor1"> with a CKEditor
				// instance, using default configuration.
				CKEDITOR.replace('editor<?php echo e($languages->languages_id); ?>');
			
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
			
			//bootstrap WYSIHTML5 - text editor
			$(".textarea").wysihtml5();
			
    });
</script>
<?php $__env->stopSection(); ?> 
<?php echo $__env->make('admin.layout', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>