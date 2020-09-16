

<head>
    <meta name="google-signin-client_id" content="591515239318-m1kltvq8s3ng853m137jb2evmq98rh2a.apps.googleusercontent.com">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="google-site-verification" content="pHuuMlY86j0m5wAzChszSD4OLLszSXdbgHJqOWuuHXg" />
    <!--<script src="https://apis.google.com/js/platform.js" async defer></script>-->
    <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-155399904-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-155399904-1');
</script>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @if(empty($result['commonContent']['setting'][18]->value))
    <!--<title>@lang('website.Ecommerce') | {{ $pageTitle }}</title>-->
        
    @else
    <!--<title><?=stripslashes($result['commonContent']['setting'][18]->value)?></title>-->
<title>{{ $pageTitle }} | Hygiene Brand for Women - Dioxin free Pads, Sanitary Napkin Online in India</title>
	<!-- <title>{{ $pageTitle }} | {{$result['commonContent']['setting'][18]->value}}</title>  -->
    @endif
    
    @if(!empty($web_setting[86]->value))
    <link rel="icon" href="{{asset('').$web_setting[86]->value}}" type="image/png">
  @endif
    
                    <?php
                    if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins2")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pads - Dioxin Free And Odour Free Pads | 280mm"/>
    <meta name="description" content="Senitta is one of the India's leading brands manufacturing Dioxin free Sanitary Napkins. Our products are designed to provide freedom to females keeping in mind, healthiness and safety. Our products make women feel comfortable during menstruation and ensure hygiene."/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins1")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pads - Dioxin Free And Odour Free Pads | 240mm "/>
    <meta name="description" content="Shop For The Best Sanitary Pads In India For Women And Girls Online. Senitta Sanitary Napkins Are Soft With Thin Wings. Sync With Your Period Cycle."/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins-pack-of-6-of-240-mm-size")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pack Of 7 Dioxin Free And Odour Free Pads | 280mm"/>
   <meta name="description" content="Shop For The Best Sanitary Pads In India For Women And Girls Online. Senitta Sanitary Napkins Are Soft With Thin Wings. Sync With Your Period Cycle."/> 
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins-pack-of-6-of-280-mm-size")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pack Of 7 Dioxin Free And Odour Free Pads | 240mm"/>
    <meta name="description" content="Shop For The Best Sanitary Pads In India For Women And Girls Online. Senitta Sanitary Napkins Are Soft With Thin Wings. Sync With Your Period Cycle."/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins-pack-of-12-of-280-mm-size")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pack Of 13 Dioxin Free And Odour Free Pads | 280mm"/>
    <meta name="description" content="Shop For The Best Sanitary Pads In India For Women And Girls Online. Senitta Sanitary Napkins Are Soft With Thin Wings. Sync With Your Period Cycle."/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/product-detail/dioxin-free-sanitary-napkins-pack-of-12-of-240-mm-size")
                    {
                    ?>
                     <meta name="title"  content="Senitta Pack Of 13 Dioxin Free And Odour Free Pads | 240mm "/>
    <meta name="description" content="Shop For The Best Sanitary Pads In India For Women And Girls Online. Senitta Sanitary Napkins Are Soft With Thin Wings. Sync With Your Period Cycle."/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else if($_SERVER['REQUEST_URI']=="/shop")
                    {
                    ?>
                     <meta name="title"  content="Dioxin Free Sanitary Pads, Napkins Online In India - Senitta "/>
    <meta name="description" content="Senitta offers an exclusive range of dioxin free sanitary products such as Pads or Napkins. These products are designed keeping in mind the comfort and requirements of women. Senitta makes sanitary products of different sizes which suit the everyday needs of women. "/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    else 
                    {
                    ?>
                     <meta name="title"  content="Hygiene Brand for Women - Dioxin free Pads, Sanitary Napkin Online in India"/>
    <meta name="description" content="Senitta is one of the India's leading brands manufacturing Dioxin free Sanitary Napkins. Our products are designed to provide freedom to females keeping in mind, healthiness and safety. Our products make women feel comfortable during menstruation and ensure hygiene. "/>
    <meta name="keywords" content=""/>
                    <?php
                    }
                    ?>
   
    
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="Vectorcoder" content="http://ionicecommerce.com">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" media="all" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.datatables.net/fixedheader/3.1.6/css/fixedHeader.bootstrap4.min.css" media="all" rel="stylesheet" type="text/css"/>
    <!--new css by imam-->
    <link href="{{'/css/app.css'}}" rel="stylesheet">

    
    
    @if(!empty(session("theme")))
        <link href="{!! asset('resources/views/themeone/'.session("theme").'.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    @else
        <link href="{!! asset('resources/views/themeone/app.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    @endif
    <link href="{!! asset('resources/views/themeone/owl.carousel.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    
    <link href="{!! asset('resources/views/themeone/jquery-ui.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    <link href="{!! asset('resources/views/themeone/font-awesome.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    
    <link href="{!! asset('resources/views/themeone/rtl.css') !!} " media="all" rel="stylesheet" type="text/css"/>
    <link href="{!! asset('resources/views/themeone/responsive.css') !!} " media="all" rel="stylesheet" type="text/css"/>

    
    
   
    <!--------- stripe js ------>
    <script src="https://js.stripe.com/v3/"></script>

    <link rel="stylesheet" type="text/css" href="{!! asset('resources/views/themeone/responsive.css') !!}" data-rel-css="" />
    
    <!------- paypal ---------->
    <script src="https://www.paypalobjects.com/api/checkout.js"></script>
    
    <!---- onesignal ------>
    @if($result['commonContent']['setting'][54]->value=='onesignal')
    <link rel="manifest" href="{!! asset('public/onesignal/manifest.json') !!}" />
    <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async=""></script>
    <script>
    $(document).ready(function(){
        // Show hide popover
        $(".dropdown").click(function(){
            $(this).find(".dropdown-menu").slideToggle("fast");
        });
    });
    $(document).on("click", function(event){
        var $trigger = $(".dropdown");
        if($trigger !== event.target && !$trigger.has(event.target).length){
            $(".dropdown-menu").slideUp("fast");
        }            
    });
</script>
    <script>
    var OneSignal = window.OneSignal || [];
      OneSignal.push(function() {
          //push here
      });
        
    //onesignal 
    OneSignal.push(["init", {
      appId: "{{$result['commonContent']['setting'][55]->value}}",
     // safari_web_id: oneSignalSafariWebId,
      persistNotification: false,
      notificationClickHandlerMatch: 'origin',
      autoRegister: false,  
      notifyButton: {
       enable: false 
      }
     }]);  
      
    </script>
    @endif
    
    @if(!empty($result['commonContent']['setting'][76]->value))
        <?=stripslashes($result['commonContent']['setting'][76]->value)?>
    @endif
</head>