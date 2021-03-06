<header id="header-area" class="header-area bg-primary" style="background-color:#F05372 !important;">
	<div class="header-mini">
       <div class="container">
        <div class="row align-items-center">
            <div class="col-12">

               <nav id="navbar_0" class="navbar navbar-expand-md navbar-dark navbar-0 p-0">
                <div class="navbar-brand">
                    <select name="change_language" id="change_language" class="change-language">
                        <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languages_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>                               
                        <option value="<?php echo e($languages_data->code); ?>" data-class="<?php echo e($languages_data->code); ?>" data-style="background-image: url(<?php echo e(asset('').$languages_data->image); ?>);" <?php if(session('locale')==$languages_data->code): ?> selected <?php endif; ?>><?php echo e($languages_data->name); ?></option>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                    </select>
                </div>


                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar_collapse_0" aria-controls="navbar_collapse_0" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbar_collapse_0">
                    <ul class="navbar-nav">

                        <?php if(Auth::guard('customer')->check()): ?>
                        <li class="nav-item">
                            <div class="nav-link">
                                <span class="p-pic"><img src="<?php echo e(asset('').auth()->guard('customer')->user()->customers_picture); ?>" alt="image"></span><?php echo app('translator')->getFromJson('website.Welcome'); ?>&nbsp;<?php echo e(auth()->guard('customer')->user()->customers_firstname); ?>&nbsp;<?php echo e(auth()->guard('customer')->user()->customers_lastname); ?>!
                            </div>
                        </li>
                        <li class="nav-item"> <a href="<?php echo e(URL::to('/profile')); ?>" class="nav-link -before"><?php echo app('translator')->getFromJson('website.Profile'); ?></a> </li>
                        <li class="nav-item"> <span class="badge badge-secondary" id="wishlist-count" style="background-color:#F3ABAF;">Hygine currency <?php 
                        $cust=auth()->guard('customer')->user()->customers_id;
                        $user = DB::table('customers_hygiene_currency')->where('customers_id', $cust)->first();
                        echo  $user->balance_amount;




                        ?> </span></li>

                        <li class="nav-item"> <a href="<?php echo e(URL::to('/wishlist')); ?>" class="nav-link -before"><?php echo app('translator')->getFromJson('website.Wishlist'); ?></a> </li>
                        <li class="nav-item"> <a href="<?php echo e(URL::to('/orders')); ?>" class="nav-link -before"><?php echo app('translator')->getFromJson('website.Orders'); ?></a> </li>

                        <li class="nav-item"> <a href="<?php echo e(URL::to('/shipping-address')); ?>" class="nav-link -before"><?php echo app('translator')->getFromJson('website.Shipping Address'); ?></a> </li>
                        <li class="nav-item"> <a href="<?php echo e(URL::to('/logout')); ?>" class="nav-link -before"><?php echo app('translator')->getFromJson('website.Logout'); ?></a> </li>
                        <?php else: ?>
                        <li class="nav-item"><div class="nav-link"><?php echo app('translator')->getFromJson('website.Welcome Guest!'); ?></div></li>
                        <li class="nav-item"> <a href="<?php echo e(URL::to('/login')); ?>" class="nav-link -before"><i class="fa fa-lock" aria-hidden="true"></i>&nbsp;<?php echo app('translator')->getFromJson('website.Login/Register'); ?></a> </li>
                        <?php endif; ?>
                    </ul> 
                </div>   
            </div>
        </nav>
    </div>
</div>
</div>
<div class="header-maxi">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-12  col-sm-12 col-lg-3 spaceright-0">
                <a href="<?php echo e(URL::to('/')); ?>" class="logo">
                   <?php if($result['commonContent']['setting'][78]->value=='name'): ?>
                   <?=stripslashes($result['commonContent']['setting'][79]->value)?>
                   <?php endif; ?>

                   <?php if($result['commonContent']['setting'][78]->value=='logo'): ?>
                   <img src="/resources/assets/images/site_images/1561714614.senitta_logo.png" height="69px" width="171px" alt="Senitta">
                   <?php endif; ?>
               </a>
           </div>
           <div class="col-12 col-sm-7 col-md-8 col-lg-6 px-0">      
            <form class="form-inline" action="<?php echo e(URL::to('/shop')); ?>" method="get">
                <div class="search-categories">

                    <!--<select id="category_id" name="category" >
                    <option value="all"><?php echo app('translator')->getFromJson('website.All Categories'); ?></option>
                </select>-->
                <input type="search" name="search" placeholder="<?php echo app('translator')->getFromJson('website.Search entire store here'); ?>..." value="<?php echo e(app('request')->input('search')); ?>" aria-label="Search" style="width:100%;">
                <button type="submit" class="btn btn-secondary" style="background-color:#F3ABAF;display:none;"><i class="fa fa-search" aria-hidden="true"></i></button>
            </div>
        </form>
    </div>
    <div class="col-12 col-sm-5 col-md-4 col-lg-3 spaceleft-0">
        <ul class="top-right-list">        
                        <!--<li class="phone-header">
                            <a>
                                <img class="img-fluid" src="<?php echo e(asset('').'public/images/phone.png'); ?>" alt="icon">
                                <span class="block">
                                    <span class="title"><?php echo app('translator')->getFromJson('website.Call Us Free'); ?>:</span>
                                    <span class="items">888 9436 6000</span>
                                </span>
                            </a>
                        </li>-->
                        <li class="wishlist-header">
                            <a href="<?php echo e(URL::to('/wishlist')); ?>">
                                <span class="badge badge-secondary" id="wishlist-count" style="background-color:#F3ABAF;"><?php echo e($result['commonContent']['totalWishList']); ?></span>
                                <!--<img class="img-fluid" src="<?php echo e(asset('').'public/images/wishlist_bag.png'); ?>" alt="icon">-->
                                
                                <span class="fa-stack fa-lg">
                                  <i class="fa fa-shopping-bag fa-stack-2x"></i>
                                  <i class="fa fa-heart fa-stack-2x"></i>
                              </span>
                          </a>
                      </li>

                      <li class="cart-header dropdown head-cart-content"></li>
                  </ul>
              </div>
          </div>
      </div>
  </div>
  <div class="header-navi">
   <div class="container">
       <div class="row align-items-center">

           <div class="col-12">

            <nav id="navbar_1" class="navbar navbar-expand-lg navbar-dark navbar-1 p-0 d-none d-lg-block">

                <div class="collapse navbar-collapse" id="navbar_collapse_1">

                  <ul class="navbar-nav">

                    <li class="nav-item dropdown dropdown-main">

                        <a href="" class="nav-link " id="navbarDropdownMenuLink00" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background-color:#F3ABAF;"> <i class="fa fa-align-right" aria-hidden="true"></i><?php echo app('translator')->getFromJson('website.All Categories'); ?>  <i class="fa fa-angle-down" aria-hidden="true"></i></a>

                              <!--<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink00">          
                                <?php $__currentLoopData = $result['commonContent']['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>            
                                    <li>                
                                        <a class="dropdown-item" href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($categories_data->slug); ?>"><img class="img-fuild" src="<?php echo e(asset('').$categories_data->icon); ?>" alt="Senitta"><?php echo e($categories_data->name); ?> 
                                         <?php if(count($categories_data->sub_categories)>0): ?>
                                         <i class="fa fa-angle-right " aria-hidden="true"></i>
                                         <?php endif; ?>
                                        </a> <?php if(count($categories_data->sub_categories)>0): ?>
                                        
                                        <ul class="dropdown-menu dropdown-submenu">
                                            <?php $__currentLoopData = $categories_data->sub_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            
                                            <li>
                                                <a class="dropdown-item" href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($sub_categories_data->sub_slug); ?>"><img class="img-fuild" src="<?php echo e(asset('').$sub_categories_data->sub_icon); ?>" alt="Senitta"><?php echo e($sub_categories_data->sub_name); ?></a></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                                        </ul>
                                    <?php endif; ?>
                                    </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>-->
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink00">          


                                    <!--<li>                
                                        <a class="dropdown-item" href="https://senitta.com/shop?category=hygiene-account"><img class="img-fuild" src="https://senitta.com/resources/assets/images/category_icons/1570622884.Balance.png" alt="Senitta">Check Balance 
                                        </a>                                     </li>-->

                                        <li>                
                                            <a class="dropdown-item" href="<?php echo e(URL::to('/')); ?>"><img class="img-fuild" src="/resources/assets/images/category_icons/1570623062.Statement.png" alt="Senitta">Home 
                                            </a>                                     </li>  
                                            <li>                
                                                <a class="dropdown-item" href="<?php echo e(URL::to('/orders')); ?>"><img class="img-fuild" src="/resources/assets/images/category_icons/1570623062.Statement.png" alt="Senitta">Account Statements 
                                                </a>                                     </li>



                                                <li>                
                                                    <a class="dropdown-item" href="<?php echo e(URL::to('/period')); ?>" target="_blank"><img class="img-fuild" src="/resources/assets/images/category_icons/1577969963.1570623062.Statement.png" alt="Senitta">Period Tracker 
                                                    </a>                                     </li>



                                                    <li>                
                                                        <a class="dropdown-item" href="<?php echo e(URL::to('/page?name=hygiene-tips')); ?>"><img class="img-fuild" src="/resources/assets/images/category_icons/1570623203.Fashion-&amp;-Hygiene-Test.png" alt="Senitta">Fashion &amp; Hygiene Tips 
                                                        </a>                                     </li>

                                                        <li>                
                                                            <a class="dropdown-item" href="<?php echo e(URL::to('/news?category=pr')); ?>"><img class="img-fuild" src="/resources/assets/images/category_icons/1570623228.in-news.png" alt="Senitta">In-News 
                                                            </a>                                     </li>

                                                            <li>                
                                                                <a class="dropdown-item" href="<?php echo e(URL::to('/page?name=games')); ?>"><img class="img-fuild" src="/resources/assets/images/category_icons/1577970034.1570623062.Statement.png" alt="Senitta">Games 
                                                                </a>                                     </li>
                                                            </ul>
                                                        </li>
                            <!--<li class="nav-item dropdown open">
                                <a href="" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo app('translator')->getFromJson('website.homePages'); ?></a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink01">
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=one')); ?>" ><?php echo app('translator')->getFromJson('website.homePage1'); ?></a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=two')); ?>"><?php echo app('translator')->getFromJson('website.homePage2'); ?></a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=three')); ?>"><?php echo app('translator')->getFromJson('website.homePage3'); ?></a> </li>
                                </ul>
                            </li>-->
                            <li class="nav-item"> <a class="nav-link" href="<?php echo e(URL::to('/shop')); ?>"><?php echo app('translator')->getFromJson('website.Shop'); ?></a> </li>
                            <li class="nav-item dropdown open">
                                <a class="nav-link dropdown-toggle" href="<?php echo e(URL::to('/news/')); ?>"><?php echo app('translator')->getFromJson('website.News'); ?></a>

                                <ul class="dropdown-menu" > 
                                    <?php $__currentLoopData = $result['commonContent']['newsCategories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>             	
                                    <li>                
                                        <a class="dropdown-item" href="<?php echo e(URL::to('/news?category='.$categories->slug)); ?>"><?php echo e($categories->name); ?></a>                 
                                    </li>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </ul> 
                            </li>
                            <li class="nav-item dropdown open">
                                <a href="" class="nav-link dropdown-toggle" id="navbarDropdownMenuLink02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?php echo app('translator')->getFromJson('website.infoPages'); ?></a>

                                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink02" aria-expanded="false">
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/page?name=about-us')); ?>">About Us</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=why-senitta')); ?>">Why Senitta?</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=healthy-lifestyle')); ?>">Healthy Lifestyle</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=hygiene-tips')); ?>">Hygiene Tips</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=makeover-tips')); ?>">Makeover Tips</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=fashion-and-lifestyle')); ?>">Fashion and Lifestyle</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=female-facts')); ?>">Female Facts</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=trending-bytes')); ?>">Trending Bytes</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=privacy-policy')); ?>">Privacy Policy</a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('page?name=return-policy')); ?>">Return Policy</a> </li>


                                </ul>
                                
                                
                                
                            </li>
                            <li class="nav-item"> <a class="nav-link" href="<?php echo e(URL::to('/contact-us')); ?>"><?php echo app('translator')->getFromJson('website.Contact Us'); ?></a> </li>
                            <li class="nav-item last"><a class="nav-link" ><span style="background-color:#F3ABAF;"><?php echo app('translator')->getFromJson('website.hotline'); ?></span>(<?php echo e($result['commonContent']['setting'][11]->value); ?>)</a></li>
                        </ul>
                    </div>
                </nav>

                <nav id="navbar_2" class="navbar navbar-expand-lg navbar-dark navbar-2 p-0 d-block d-lg-none">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar_collapse_2" aria-controls="navbar_collapse_2" aria-expanded="false" aria-label="Toggle navigation"> <?php echo app('translator')->getFromJson('website.Menu'); ?> </button>

                    <div class="collapse navbar-collapse" id="navbar_collapse_2">

                      <ul class="navbar-nav"> 
                        <li class="nav-item first"><a href="<?php echo e(URL::to('/')); ?>" class="nav-link"><i class="fa fa-home"></i></a></li>   
<!--
                            <li class="nav-item dropdown open">
                                <div class="nav-link dropdown-toggle"><?php echo app('translator')->getFromJson('website.homePages'); ?></div>
                                <ul class="dropdown-menu" >
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=one')); ?>" ><?php echo app('translator')->getFromJson('website.homePage1'); ?></a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=two')); ?>"><?php echo app('translator')->getFromJson('website.homePage2'); ?></a> </li>
                                    <li> <a class="dropdown-item" href="<?php echo e(URL::to('/setStyle?style=three')); ?>"><?php echo app('translator')->getFromJson('website.homePage3'); ?></a> </li>
                                </ul>
                            </li>
                        -->
                        <li class="nav-item"> <a class="nav-link" href="<?php echo e(URL::to('/shop')); ?>"><?php echo app('translator')->getFromJson('website.Shop'); ?></a> </li>

                        <li class="nav-item dropdown mega-dropdown open">
                          <div class="nav-link dropdown-toggle">
                            All Categories
                            <!-- <span class="badge badge-secondary"><?php echo app('translator')->getFromJson('website.hot'); ?></span>-->
                        </div>

                        <ul class="dropdown-menu mega-dropdown-menu row" >
                            <li class="col-sm-3">
                                  <!--<ul>
                                    <li class="dropdown-header underline"><?php echo app('translator')->getFromJson('website.new in Stores'); ?></li>
                                    
                                    <?php if($result['commonContent']['recentProducts']['success']==1): ?>
                                        <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                                          <div class="carousel-inner">
                                          
                                        <?php $__currentLoopData = $result['commonContent']['recentProducts']['product_data']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$products): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="carousel-item <?php if($key==0): ?> active <?php endif; ?>">
                                                <span products_id = '<?php echo e($products->products_id); ?>' class="fa <?php if($products->isLiked==1): ?> fa-heart <?php else: ?> fa-heart-o <?php endif; ?> is_liked"><span class="badge badge-secondary">2</span></span>
                                                <a href="<?php echo e(URL::to('/product-detail/'.$products->products_slug)); ?>" class="fa fa-eye"><img src="<?php echo e(asset('').$products->products_image); ?>" alt="<?php echo e($products->products_name); ?>"></a>
                                                <small><?php $__currentLoopData = $products->categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                	<?php echo e($category->categories_name); ?><?php if(++$key === count($products->categories)): ?> <?php else: ?>, <?php endif; ?>                                                	
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?></small>
                                                <h5><?php echo e($products->products_name); ?></h5>
                                                
                                                <div class="block">
                                                    <span class="price">
                                                        <?php if(!empty($products->discount_price)): ?>
                                                            <span class="line-through"><?php echo e($web_setting[19]->value); ?><?php echo e($products->discount_price+0); ?></span>
                                                            <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?>

                                                        <?php else: ?>
                                                            <?php echo e($web_setting[19]->value); ?><?php echo e($products->products_price+0); ?>

                                                        <?php endif; ?>
                                                    </span>
                                                    
                                                    <div class="buttons">
                                                        <button  class="btn btn-secondary cart" products_id="<?php echo e($products->products_id); ?>"><?php echo app('translator')->getFromJson('website.Add to Cart'); ?></button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Item -->
                                        <!-- <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            
                                          </div>
                                          <!-- End Carousel Inner -->
                                         <!--</div>
                                    <?php endif; ?>
                                    
                                </ul>-->
                            </li>
                                <!--<li class="col-sm-9 pl-4 row">
                                <?php $__currentLoopData = $result['commonContent']['categories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    
                                      <ul class="col-sm-4">
                                            
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($categories_data->slug); ?>"><?php echo e($categories_data->name); ?></a></li>
                                          <?php if(count($categories_data->sub_categories)>0): ?>
                                             <?php $__currentLoopData = $categories_data->sub_categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub_categories_data): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li><a href="<?php echo e(URL::to('/shop')); ?>?category=<?php echo e($sub_categories_data->sub_slug); ?>"><?php echo e($sub_categories_data->sub_name); ?></a></li>              		
                                             <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
                                          <?php endif; ?> 
                                      
                                      </ul>        
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?> 
                            </li>-->
                            <li class="col-sm-9 pl-4 row">

                                     <!-- <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="https://www.senitta.com/shop?category=hygiene-account">Check Balance</a></li>
                                    </ul> -->

                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/')); ?>">Home</a></li>
                                    </ul>
                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/orders')); ?>">Account Statements</a></li>
                                    </ul>

                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/period')); ?>">Period Tracker</a></li>
                                    </ul>
                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/page?name=hygiene-tips')); ?>">Fashion &amp; Hygiene Tips</a></li>
                                    </ul>   

                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('/news?category=pr')); ?>">In-News</a></li>
                                    </ul> 

                                    <ul class="col-sm-4">
                                        <li class="dropdown-header"><a href="<?php echo e(URL::to('page?name=games')); ?>">Games</a></li>
                                    </ul>        

                                </li>
                                
                                
                            </ul>

                        </li>
                        <li class="nav-item dropdown open">
                            <div class="nav-link dropdown-toggle"><?php echo app('translator')->getFromJson('website.News'); ?></div>

                            <ul class="dropdown-menu" > 
                                <?php $__currentLoopData = $result['commonContent']['newsCategories']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $categories): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>             	
                                <li>                
                                    <a class="dropdown-item" href="<?php echo e(URL::to('/news?category='.$categories->slug)); ?>"><?php echo e($categories->name); ?></a>                 
                                </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>    
                        </li>
                        <li class="nav-item dropdown open">
                            <div class="nav-link dropdown-toggle"><?php echo app('translator')->getFromJson('website.infoPages'); ?></div>
                            
                            <ul class="dropdown-menu">
                                <?php if(count($result['commonContent']['pages'])): ?>
                                <?php $__currentLoopData = $result['commonContent']['pages']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li> <a href="<?php echo e(URL::to('/page?name='.$page->slug)); ?>" class="dropdown-item"><?php echo e($page->name); ?></a> </li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                <?php endif; ?>  
                            </ul>
                        </li>

                        <li class="nav-item"> <a class="nav-link" href="<?php echo e(URL::to('/contact-us')); ?>"><?php echo app('translator')->getFromJson('website.Contact Us'); ?></a> </li>
                        <li class="nav-item last"><a class="nav-link"><span><?php echo app('translator')->getFromJson('website.hotline'); ?></span>(<?php echo e($result['commonContent']['setting'][11]->value); ?>)</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</div>
</div>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

</header>

