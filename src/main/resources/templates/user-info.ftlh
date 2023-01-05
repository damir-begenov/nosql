<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User-info</title>
</head>
<body>
<h1>Information about User : ${user.email} , ${user.name}  <#if user.numberPhone??>
    ,${user.numberPhone}
</#if></h1>
<#list news as news>
    <div>
        <p ><b>${news.country}</b> ${news.salary} тг. |  <a href="/news/${news.id}">Подробнее</a>
            <img src="${news.image}" style="width: 150px;height: 150px" alt="">
    </div>
<#else>
    <h3>There is empty</h3>
</#list>
