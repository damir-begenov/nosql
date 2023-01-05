<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RUDA NEWS INFO</title>
</head>
<body>
<h1>News info</h1>
<b>Компания : </b>${newss.company}<br>
<b>Описание : </b>${newss.description}<br>
<b>Индустрия : </b>${newss.industry}<br>
<b>Время работы : </b>${newss.time}<br>
<b>Зарплата : </b>${newss.salary}<br>
<b>Автор: <a href="/user/${newss.user.id}">${newss.user.email}</a><b></b></b>
</form>

<hr>
</body>
</html>