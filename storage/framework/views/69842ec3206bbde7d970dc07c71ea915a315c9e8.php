<!doctype html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <?php if(empty($result['commonContent']['setting'][18]->value)): ?>
    <title><?php echo app('translator')->getFromJson('website.Ecommerce'); ?> | <?php echo e($pageTitle); ?></title>
    <?php else: ?>
    <title><?=stripslashes($result['commonContent']['setting'][18]->value)?></title>
    <?php endif; ?>
    
    <?php if(!empty($result['commonContent']['setting'][86]->value)): ?>
    <link rel="icon" href="<?php echo e(asset('').$result['commonContent']['setting'][86]->value); ?>" type="image/gif">
    <?php endif; ?>
    
    <meta name="DC.title"  content="<?=stripslashes($result['commonContent']['setting'][73]->value)?>"/>
    <meta name="description" content="<?=stripslashes($result['commonContent']['setting'][75]->value)?>"/>
    <meta name="keywords" content="<?=stripslashes($result['commonContent']['setting'][74]->value)?>"/>
	
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
	<meta name="Vectorcoder" content="http://ionicecommerce.com">
	
	<?php if(!empty(session("theme"))): ?>
		<link href="<?php echo asset('public/css/'.session("theme").'.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    <?php else: ?>
		<link href="<?php echo asset('public/css/app.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    <?php endif; ?>
    <link href="<?php echo asset('public/css/owl.carousel.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    
    <link href="<?php echo asset('public/css/jquery-ui.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    <link href="<?php echo asset('public/css/font-awesome.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    
    <link href="<?php echo asset('public/css/rtl.css'); ?> " media="all" rel="stylesheet" type="text/css"/>
    <link href="<?php echo asset('public/css/responsive.css'); ?> " media="all" rel="stylesheet" type="text/css"/>

	
    
   
    <!--------- stripe js ------>
	<script src="https://js.stripe.com/v3/"></script>

    <link rel="stylesheet" type="text/css" href="<?php echo asset('public/css/stripe.css'); ?>" data-rel-css="" />
    
    <!------- paypal ---------->
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
	
    <!---- onesignal ------>
    <?php if($result['commonContent']['setting'][54]->value=='onesignal'): ?>
	<link rel="manifest" href="<?php echo asset('public/onesignal/manifest.json'); ?>" />
	<script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
	<script>
    var OneSignal = window.OneSignal || [];
      OneSignal.push(function() {
		  //push here
      });
	  	
	//onesignal 
	OneSignal.push(["init", {
	  appId: "<?php echo e($result['commonContent']['setting'][55]->value); ?>",
	 // safari_web_id: oneSignalSafariWebId,
	  persistNotification: false,
	  notificationClickHandlerMatch: 'origin',
	  autoRegister: false,	
	  notifyButton: {
	   enable: false 
	  }
	 }]);  
	  
    </script>
    <?php endif; ?>
    
    <?php if(!empty($result['commonContent']['setting'][76]->value)): ?>
		<?=stripslashes($result['commonContent']['setting'][76]->value)?>
    <?php endif; ?>
</head>