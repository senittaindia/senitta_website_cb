<footer class="footer-content">
  <div class="container">
    <div class="row">
      <div class="col-12 col-md-12 col-lg-4">
        <div class="single-footer">
          <h5>Reach Out Us</h5>
          <ul class="contact-list  pl-0 mb-0">
            <li> <i class="fa fa-map-marker"></i><span>{{$result['commonContent']['setting'][4]->value}} {{$result['commonContent']['setting'][5]->value}} {{$result['commonContent']['setting'][6]->value}}, {{$result['commonContent']['setting'][7]->value}} {{$result['commonContent']['setting'][8]->value}}</span> </li>
            <li> <i class="fa fa-phone"></i><span>{{$result['commonContent']['setting'][11]->value}}</span> </li>
            <li> <i class="fa fa-envelope"></i><span> <a href="mailto:info@senitta.com">{{$result['commonContent']['setting'][3]->value}}</a> </span> </li>
      
          </ul>
        </div>
      </div>
      <div class="col-12 col-md-12 col-lg-5">
        <div class="footer-block">
        	<div class="single-footer">
              <h5>@lang('website.Our Services')</h5>
              <ul class="links-list pl-0 mb-0">
                <li> <a href="{{ URL::to('/')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>@lang('website.Home')</a> </li>
                <li> <a href="{{ URL::to('/shop')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>@lang('website.Shop')</a> </li>
                <li> <a href="{{ URL::to('/orders')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>@lang('website.Orders')</a> </li>
                <li> <a href="{{ URL::to('/viewcart')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>@lang('website.Shopping Cart')</a> </li>            <li> <a href="{{ URL::to('/wishlist')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>@lang('website.Wishlist')</a> </li>            
              </ul>
            </div>
            <div class="single-footer">
              <h5>@lang('website.Information')</h5>
              
              <ul class="links-list pl-0 mb-0">
              <li> <a href="{{ URL::to('/page?name=about-us')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>About Us</a> </li>
              <li> <a href="{{ URL::to('/contact-us')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Contact</a> </li>
              <li> <a href="{{ URL::to('/page?name=healthy-lifestyle')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Healthy Lifestyle</a> </li>
            <li> <a href="{{ URL::to('/page?name=hygiene-tips')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Hygiene Tips</a> </li>
            <li> <a href="{{ URL::to('/page?name=makeover-tips')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Makeover Tips</a> </li>
            <li> <a href="{{ URL::to('/page?name=privacy-policy')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Privacy Policy</a> </li>
            <li> <a href="{{ URL::to('/page?name=return-policy')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Return Policy</a> </li>
                
                
              </ul>
            </div>
            <div class="single-footer">
              <h5>Join Senitta</h5>
              <ul class="links-list pl-0 mb-0">
                 <li> <a href="{{ URL::to('/page?name=why-senitta')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Why Senitta?</a> </li>          
                <li> <a href="{{ URL::to('/page?name=female-facts')}}"><i class="fa fa-angle-double-right" aria-hidden="true"></i>Female Facts </a></li>
                <li> <a href="{{ URL::to('/news?category=pr')}}"><i class="fa fa-angle-double-right"></i>News</a></li>
              </ul>
            </div>
        </div>
      </div>
      
      <div class="col-12 col-md-12 col-lg-3">
        <div class="single-footer">
			@if(!empty($result['commonContent']['setting'][89]) and $result['commonContent']['setting'][89]->value==1)
			<div class="newsletter">
            	<h5>@lang('website.Subscribe for Newsletter')</h5>
                <div class="block">
                    <input type="email" name="email" id="email" placeholder="@lang('website.Your email address here')">
                    <button type="button" id="subscribe" class="btn btn-secondary">@lang('website.Subscribe')</button>
                </div>
            </div>
			<div class="alert alert-success alert-dismissible success-subscribte" role="alert" style="opacity: 500; display: none;"></div>

			<div class="alert alert-danger alert-dismissible error-subscribte" role="alert" style="opacity: 500; display: none;"></div>
			@endif
			
            <div class="socials">
            	<h5>@lang('website.Follow Us')</h5>
                <ul class="list">
                	<li>
                    	@if(!empty($result['commonContent']['setting'][50]->value))
                    	<!-- 	<a href="{{$result['commonContent']['setting'][50]->value}}" class="fa fa-facebook" target="_blank" style="background-color: #F3ABAF;
    color: #111;"></a> -->
    <a href="https://www.facebook.com/senitta.hygiene.3" class="fa fa-facebook" target="_blank" style="background-color: #F3ABAF;
    color: #111;"></a>
                        @else
                        	<a href="#" class="fa fa-facebook"></a>
                        @endif                        
                    </li>
                    <li>
                    @if(!empty($result['commonContent']['setting'][52]->value))
                        <a href="https://twitter.com/HygieneSenitta" class="fa fa-twitter" target="_blank" style="background-color: #F3ABAF;
    color: #111;"></a>
                    @else
                        <a href="#" class="fa fa-twitter"></a>
                    @endif</li>
                    <li>
                    @if(!empty($result['commonContent']['setting'][51]->value))
                        <a href="{{$result['commonContent']['setting'][51]->value}}" class="fa fa-instagram" target="_blank" style="background-color: #F3ABAF;
    color: #111;"></a>
                    @else
                        <a href="#" class="fa fa-google"></a>
                    @endif
                    </li>
                    <li>
                    @if(!empty($result['commonContent']['setting'][53]->value))
                        <a href="{{$result['commonContent']['setting'][53]->value}}" class="fa fa-linkedin" target="_blank" style="background-color: #F3ABAF;
    color: #111;"></a>
                    @else
                        <a href="#" class="fa fa-linkedin"></a>
                    @endif
                    </li>
                </ul>
            </div>
          
        </div>
      </div>
    </div>
  </div>
</footer>

<div class="footer py-2 my-2">
  <div class="container">
    <div class="row">
    	<div class="footer-image col-12 col-md-6">
            <img class="img-fluid" src="{{asset('').'/resources/views/themeone/images/payments.png'}}" alt="Senitta">
        </div>
        <div class="footer-info col-12 col-md-6">
            <p> &copy; 2020 <a href="{{ URL::to('/')}}" style="text-decoration:none;">Senitta Hygeine Bank.</a> Project powered by <a href="" style="text-decoration:none;">UHP</a> </p>
        </div>
        <div class="floating-top"><a href="#" class="fa fa-angle-up"></a></div>
    </div>
  </div>
</div>

<!--notification-->
<div id="message_content"></div>

<!--- loader content --->
 <div class="loader" id="loader">
	<img src="{{asset('').'resources/views/themeone/images/loader.gif'}}" alt="Senitta">
</div> 






