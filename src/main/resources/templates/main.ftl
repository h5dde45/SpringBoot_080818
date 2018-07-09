<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
<@l.logout/>
</div>
<div>
    <form method="post">
        <input type="text" name="text"
               placeholder="Введите сообщение: ">
        <input type="text" name="tag"
               placeholder="Введите тэг: ">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>
<hr>
<div>
    <form method="get" action="/main">
        <input type="text" name="filter"  value="${filter}">
        <button type="submit">Найти</button>
    </form>
</div>
<hr>
<div>Список сообщений</div>
<#list messages as message>
<div>
    <b>${message.id}</b>
    <span>${message.text}</span>
    <i>${message.tag}</i>
    <strong>${message.authorName}</strong>
</div>
<#else >
no message
</#list>
</@c.page>