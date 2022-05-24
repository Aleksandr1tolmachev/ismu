<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Login
                </h1>
            </div>
        </div>
    </div>
</section>
<@c.page>
<div class="container mt-5 mb-5">
<#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
    <div class="alert alert-danger" role="alert"> ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}</div>

</#if>
<@l.login "/login" false/>
</div>
</@c.page>