<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
${user.name}
<div>
    gdfgf
    <div>
        ${user.email}
    </div>
    <img src="data:image/jpeg;base64,${user.resume?if_exists}" alt="" style="width: 300px;display: flex">

</div>
</body>
</html>
