<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<style>.tt{
        background-color: aqua;
        color: blueviolet;
    }
    *{
        margin-left: 25px;
    }
</style>
<h2>RUDA |
    <hr>
    <h4>Admin panel</h4>
    <table>
        <tr>
            <th>Email</th>
            <th>Phone</th>
            <th>Activity</th>
            <th>Roles</th>
            <th>Ban</th>
            <th>Edit</th>
            <th>Information about User</th>
        </tr>
        <#list users as user>
            <tr>
                <th>${user.email}</th>
                <th><#if user.numberPhone??>${user.numberPhone}<#else>-</#if></th>
                <th><#if user.active>true <#else>false</#if></th>
                <th><#list user.roles as roles>${roles}<#sep>, </#list></th>
                <th>
                    <form action="/admin/user/ban/${user.id}" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <input type="submit" value="Ban">
                    </form>
                </th>
                <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
                <th><a href="/user/${user.id}">Information</a></th>
            </tr>
        <#else>
            <h3>There is no User</h3>
        </#list>
    </table>
</body>
</html>