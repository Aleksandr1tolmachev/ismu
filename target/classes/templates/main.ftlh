<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<#include "parts/security.ftlh">
<section class="banner-area relative" id="home">
    <div class="overlay overlay-bg"></div>
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12">
                <h1 class="text-white">
                    Blog Details Page
                </h1>
                <p class="text-white link-nav"><a href="/index">Home </a>  <span class="lnr lnr-arrow-right"></span><a href="/gallery">Gallery</a> <span class="lnr lnr-arrow-right"></span> <a href=/main">News-blog</a></p>
            </div>
        </div>
    </div>
</section>

<@c.page>
    <div class="container mt-5 mb-5">
    <#if isAdmin>
    <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        Add news
    </a>
    <div class="collapse<#if message??>show</#if>" id="collapseExample">
<div class="form-group mt-3">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group ">
            <input type="text" name="text" class="form-control  ${(textError??)?string('is-invalid','')}" value="<#if message??>${message.text}</#if>" placeholder="Enter message"/>
                <#if tagError??>
                <div class="invalid-feedback">
                ${tagError}
                </div>
                </#if>
                </div>
                <div class="form-group">
            <input type="text" name="tag" class="form-control ${(textError??)?string('is-invalid','')}" value="<#if message??>${message.tag}</#if>" placeholder="Tag"/>
                    </div>
                    <div class="form-group">
                        <div class="custom-file">
                            <input type="file" name="file" class="custom-file-input" id="customFile">
                            <label class="custom-file-label" for="customFile">Choose file</label>
                        </div>
                        </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
                            <div class="form-group">
            <button type="submit" class="btn btn-primary">Add</button>
                            </div>
        </form>
    </div>
        </div>
</#if>
    <div class="form-row">
        <div class="form-group col-md-6">
    <div>Список сообщений </div>
    <form method="get" action="/main" class="form-inline">
        <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag" >
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
    </div>
    </div>

    <div class="card-columns">
<#list messages as message>
    <div class="card my-3">
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
        </div>
        <div class="m-2">
        <span>${message.text}</span>
        <i>Tag: ${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
       Author: ${message.authorName}
        </div>
    </div>
    <#else>
    No message
</#list>
    </div>

    </div>
</@c.page>