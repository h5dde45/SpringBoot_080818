<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div>
    <form method="post">
        <input type="text" name="text"
               placeholder="Введите сообщение: ">
        <input type="text" name="tag"
               placeholder="Введите тэг: ">
        <#--<input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
        <button type="submit">Добавить</button>
    </form>
</div>
<hr>
<div>
    <form method="post" action="filter">
        <input type="text" name="filter"
               placeholder="Введите тэг: ">
        <#--<input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
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
</div>
</#list>
</body>
</html>