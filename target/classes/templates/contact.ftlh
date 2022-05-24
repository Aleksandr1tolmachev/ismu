<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">
<section class="banner-area relative about-banner" id="home">
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Contact Us				
							</h1>	
							<p class="text-white link-nav"><a href="/index">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="/contact"> Contact Us</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->
<@c.page>
			<!-- Start contact-page Area -->
			<section class="contact-page-area section-gap">
				<div class="container">
					<div class="row">
						<div class="map-wrap" style="width:100%; height: 445px;" "><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2903.2487093651175!2d104.2787996451069!3d52.273684672664515!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5da83b5230aebe37%3A0xcebd07fc564b427e!2z0YPQuy4g0JrRgNCw0YHQvdC-0LPQviDQktC-0YHRgdGC0LDQvdC40Y8sIDEsINCY0YDQutGD0YLRgdC6LCDQmNGA0LrRg9GC0YHQutCw0Y8g0L7QsdC7LiwgNjY0MDAz!5e0!3m2!1sru!2sru!4v1653295010096!5m2!1sru!2sru" width="1150" height="510" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
						<div class="col-lg-4 d-flex flex-column address-wrap">
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-home"></span>
								</div>
								<div class="contact-details">
									<h5>Irkutsk region, Irkutsk</h5>
									<p>
										St. Red Rebellion, 1
									</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-phone-handset"></span>
								</div>
								<div class="contact-details">
									<h5>+7 (3952) 24-38-25</h5>
									<p>Mon to Fri 9am to 6 pm</p>
								</div>
							</div>
							<div class="single-contact-address d-flex flex-row">
								<div class="icon">
									<span class="lnr lnr-envelope"></span>
								</div>
								<div class="contact-details">
									<h5>rektorat@ismu.baikal.ru</h5>
									<p>Send us your query anytime!</p>
								</div>
							</div>														
						</div>
						<div class="col-lg-8">
							<form action="/contact" method="post" class="form-area contact-form text-right" >
								<div class="row">	
									<div class="col-lg-6 form-group">
										<input name="name" value="${name}" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
									
										<input name="email" value="${mail}"  placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">

										<input name="subject" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" class="common-input mb-20 form-control" required="" type="text">
									</div>
									<div class="col-lg-6 form-group">
										<textarea class="common-textarea form-control" name="message" placeholder="Enter Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Messege'" required=""></textarea>				
									</div>
									<input type="hidden" name="_csrf" value="${_csrf.token}">
									<div class="col-lg-12">
										<div class="alert-msg" style="text-align: left;"></div>
										<button type="submit" onclick="alert('Email successfully sent');" class="genric-btn primary" style="float: right;">Send Message</button>
									</div>
								</div>
							</form>	
						</div>
					</div>
				</div>	
			</section>
			<!-- End contact-page Area -->
</@c.page>

