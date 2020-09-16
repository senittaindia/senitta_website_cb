@extends('layout')
@section('content')
<section class="site-content">
	<div style="width:100%;height:380px; margin-top:-30px; margin-bottom:30px; "><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3572.8194022521984!2d80.39985931501106!3d26.42930398709523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399c411470dc9e3f%3A0x8c7d54612f42c1b1!2sSenitta!5e0!3m2!1sen!2sin!4v1562149623157!5m2!1sen!2sin" width="1920" height="400" frameborder="0" style="border:0" allowfullscreen></iframe></div>

	<div class="container">
  		<div class="breadcum-area">
            <div class="breadcum-inner">
                <h3>@lang('website.Contact Us')</h3>
                <ol class="breadcrumb">                    
                    <li class="breadcrumb-item"><a href="{{ URL::to('/')}}">@lang('website.Home')</a></li>
            		<li class="breadcrumb-item active">@lang('website.Contact Us')</li>
                </ol>
            </div>
        </div>
        <div class="contact-area">
        	<div class="heading">
                <h2>@lang('website.Contact Us')</h2>
                <hr>
            </div>
        	<div class="row">
                <div class="col-12 col-md-6 col-lg-8">
                	<p style="text-align:justify;">
                	    It is very easy to stay connected with us or contact us at all times. Drop us a mail on (email) or call us on (phone number). All the social Senittians can always get in touch with us through our social media handles mentioned below. 
                   </p>
                     @if(session()->has('success') )
                        <div class="alert alert-success">
                            {{ session()->get('success') }}
                        </div>
                     @endif
                    <form enctype="multipart/form-data" action="{{ URL::to('/contact.php')}}" method="post">
                        <div class="form-group">
                            <label for="firstName">@lang('website.Full Name')</label>
                            <input type="text" class="form-control field-validate" id="name" name="name" required>
							<span class="help-block error-content" hidden>@lang('website.Please enter your name')</span>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail4" class="col-form-label">@lang('website.Email')</label>
                            <input type="email" class="form-control email-validate" id="inputEmail4" name="email">
							<span class="help-block error-content" hidden>@lang('website.Please enter your valid email address')</span>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail4" class="col-form-label">Phone</label>
                            <input type="text" class="form-control email-validate" name="phone" maxlength="10" minlength="10" pattern="[0-9]{10}" required>
							
                        </div>
                        <div class="form-group">
                            <label for="subject" class="col-form-label">@lang('website.Message')</label>
                            <textarea type="text" class="form-control field-validate" id="message" rows="5" name="message"></textarea>
							<span class="help-block error-content" hidden>@lang('website.Please enter your message')</span>
                        </div>
                        <div class="g-recaptcha" data-sitekey="6Ldy17UUAAAAADrZsbWxybozbzWBN_24Zn4o1Yoz"></div><br><br>
                        <div class="button">
                            <input type="submit" class="btn btn-dark" name="submit" value="Submit"></button>
                        </div>
                    </form>
                    
                   
                </div>
                <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    </script>
                <div class="col-12 col-md-6 col-lg-4">
                    
                    <ul class="contact-list">
                      <li> <i class="fa fa-map-marker"></i><span>{{$result['commonContent']['setting'][4]->value}} {{$result['commonContent']['setting'][5]->value}} {{$result['commonContent']['setting'][6]->value}}, {{$result['commonContent']['setting'][7]->value}} {{$result['commonContent']['setting'][8]->value}}</span> </li>
                      <li> <i class="fa fa-phone"></i><span>{{$result['commonContent']['setting'][11]->value}}</span> </li>
                      <li> <i class="fa fa-envelope"></i><span> <a href="mailto:{{$result['commonContent']['setting'][3]->value}}">{{$result['commonContent']['setting'][3]->value}}</a> </span> </li>
                    </ul>
                </div>
            </div>
        </div>
	</div>
</section>
@endsection 