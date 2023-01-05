<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel=" stylesheet " href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css " integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous " referrerpolicy="no-referrer " >
    <script src="https://kit.fontawesome.com/a58da105b1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet " href="css/announcements.css ">
    <link rel="stylesheet " href="css/navbar.css ">
    <link rel="stylesheet " href="css/normalize.css ">
    <link rel="stylesheet " href="css/footer2.css ">

    <title>User-info</title>
</head>
<body>
<div class="hero" style="margin-left: 200px ; margin-top: 200px">

<h1>Information about User : ${user.email} , ${user.name}  <#if user.numberPhone??>
    ,${user.numberPhone}</#if>
        <img src="data:image/jpeg;base64,${user.resume?if_exists}" alt="" style="width: 300px;display: flex">
</h1>

</div>
<div id="footer" class="container">

</div>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).on('click', '.search-filter li', function (){
        $(this).addClass('search-filter-active').siblings().removeClass('search-filter-active')
    });
</script>
</div>
</body>
</html>

