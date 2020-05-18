<?php if($result['filters']): ?>
				
 <div id="accordion"  class="filters" role="tablist">
 	<div class="card">
        <div class="card-header" id="headingOne">
            <h2 class="title" href="#collapseAccordian1" data-toggle="collapse" aria-expanded="false" aria-controls="collapseAccordian1">
                <?php echo app('translator')->getFromJson('website.All Categories'); ?>
            </h2>
        </div>
        <div class="collapse block" id="collapseAccordian1" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
            <?php echo $__env->make('common.categories', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        </div>
    </div>   
    
 	<form enctype="multipart/form-data" name="filters" method="get">
        <input type="hidden" name="min_price" id="min_price" value="0">
        <input type="hidden" name="max_price" id="max_price" value="<?php echo e($result['filters']['maxPrice']); ?>">
        <?php if(app('request')->input('filters_applied')==1): ?>
        <input type="hidden" name="filters_applied" id="filters_applied" value="1">
        <input type="hidden" name="options" id="options" value="<?php echo implode($result['filter_attribute']['options'],',')?>">
        <input type="hidden" name="options_value" id="options_value" value="<?php echo implode($result['filter_attribute']['option_values'], ',')?>">
        <?php else: ?>
        <input type="hidden" name="filters_applied" id="filters_applied" value="0">
        <?php endif; ?>
        <div class="card">
        	<!--id="headingOne"-->
			<div class="card-header" >
				<h2 class="title">
					<?php echo app('translator')->getFromJson('website.Filters'); ?>
				</h2>
			</div>
			<div class="block">
            	<div class="card-title"><?php echo app('translator')->getFromJson('website.Price'); ?></div>
				<div class="card-body">
                    <div id="slider-range"></div>  
                    <div id="slider-values">
                        <div class="slider-value-0"><?php echo e($web_setting[19]->value); ?><input type="text" readonly id="min_price_show"></div>
                        <div class="slider-value-1"><?php echo e($web_setting[19]->value); ?><input type="text" readonly id="max_price_show"></div>
                    </div>
                    <input type="hidden" class="maximum_price" value="<?php echo e($result['filters']['maxPrice']); ?>">                        
				</div>
			</div>
            <?php if(count($result['filters']['attr_data'])>0): ?>
            <?php $__currentLoopData = $result['filters']['attr_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$attr_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="block">
                    <div class="card-title <?php if(count($result['filters']['attr_data'])==$key+1): ?> last <?php endif; ?>"><?php echo e($attr_data['option']['name']); ?></div>
                       <div class="card-body">
                        <ul class="list">
                            <?php $__currentLoopData = $attr_data['values']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$values): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <li >
                                <div class="form-check">
                                  <label class="form-check-label">                                    
                                    <input class="form-check-input filters_box" name="<?php echo e($attr_data['option']['name']); ?>[]" type="checkbox" value="<?php echo e($values['value']); ?>" 								 									<?php 
          if(!empty($result['filter_attribute']['option_values']) and in_array($values['value_id'],$result['filter_attribute']['option_values'])) print 'checked';
                                    ?>>
                                    <?php echo e($values['value']); ?>

                                  </label>
                                </div>
                            </li>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </ul>					                    
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
            
            <div class="alret alert-danger" id="filter_required">
            </div>
            
            <div class="button">
            <?php
				$url = '';
            	if(isset($_REQUEST['category'])){
					$url = "?category=".$_REQUEST['category'];
					$sign = '&';
				}else{
					$sign = '?';					
				}
				if(isset($_REQUEST['search'])){
					$url.= $sign."search=".$_REQUEST['search'];
				}
			?>
        	<a href="<?php echo e(URL::to('/shop'.$url)); ?>" class="btn btn-dark" id="apply_options"> <?php echo app('translator')->getFromJson('website.Reset'); ?> </a>
             <?php if(app('request')->input('filters_applied')==1): ?>
        	<button type="button" class="btn btn-secondary" id="apply_options_btn"> <?php echo app('translator')->getFromJson('website.Apply'); ?></button>
            <?php else: ?>
        	<!--<button type="button" class="btn btn-secondary" id="apply_options_btn" disabled> <?php echo app('translator')->getFromJson('website.Apply'); ?></button>-->
            <button type="button" class="btn btn-secondary" id="apply_options_btn" > <?php echo app('translator')->getFromJson('website.Apply'); ?></button>
            <?php endif; ?>
        </div>
		</div>
  </form>
</div>
<?php endif; ?>