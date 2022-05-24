<#import "parts/common.ftlh" as c>
<@c.page>
    <div class="container mt-5 mb-5">
User editor
    <form action="/user" method="post">
    <input type="text" value="${user.username}" name="username">
    <#list roles as role>
    <div>
    <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
    <input type="text" value="${user.id}" name="userId">
    <input type="hidden" value="${_csrf.token}" name="_csrf">
    <button type="submit">Save</button>
    </form>
    </div>
</@c.page>