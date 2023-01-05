<#--is<!DOCTYPE html>-->
<#--<head>-->
<#--    <meta charset="UTF-8">-->
<#--    <title>Title</title>-->
<#--    <link rel="stylesheet" href="/css/main.css">-->
<#--</head>-->
<#--<body>-->

<#--<h2>RUDA |-->
<#--            <#if user.email??>-->
<#--    <h3>Имя Пользователя  <i>${user.email}</i></h3>-->
<#--    <form action="/logout" method="post">-->
<#--        <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--        <input type="submit" value="Выйти"/>-->
<#--    </form>-->
<#--    <#if user.isAdmin()>-->
<#--        <a href="/admin">Admin Panel</a>-->
<#--    </#if>-->
<#--                <#else> <a href="/login">Войти</a></h2><hr>-->
<#--            </#if>-->
<#--    <br>-->
<#--    <hr>-->


<#--<br>-->

<#--<#list news as news>-->
<#--    <div>-->
<#--        <p ><b>${news.country}</b>  <h4>${news.job}</h4>   ${news.salary} тг. |  <a href="/news/${news.id}">Подробнее</a>-->
<#--            <img src="${news.image}" style="width: 150px;height: 150px" alt="">-->
<#--    </div>-->
<#--    <hr>-->
<#--<#else>-->
<#--    <h3 class="tt">Товаров нет</h3>-->
<#--</#list>-->
<#--<hr>-->
<#--<#if user.email??>-->
<#--    <h3>Создать новый </h3>-->
<#--<form action="/news/create" method="POST" class="regbox">-->
<#--    <h1 class="tittle">Create an Employer Account</h1>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Country:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="text" id="country" name="country" required>-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Company:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="text" id="company" name="company" required>-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Industry:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="text" id="industry" name="industry" required>-->
<#--        </div>-->
<#--    </div>-->

<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Job:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <select type="text" id="job" name="job" required>-->
<#--                <option>Software</option>-->
<#--                <option>Abuser</option>-->
<#--                <option>Baker</option>-->
<#--                <option>Seller-Consultant</option>-->
<#--                <option>Selling</option>-->
<#--                <option>CEO</option>-->
<#--                <option>Professor</option>-->
<#--                <option>Teaching</option>-->
<#--                <option>Perfumer</option>-->
<#--            </select>-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Time:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <select name="time" id="time">-->
<#--                <option>Part-time</option>-->
<#--                <option>Full-time</option>-->
<#--            </select>            </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Type:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <select name="type" id="type">-->
<#--                <option>Based</option>-->
<#--                <option>Remote</option>-->
<#--            </select>-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Salary:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="number" id="salary" name="salary">-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Image:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="text" id="image" name="image">-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Number of Employees:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="number" id="employees" name="employees">-->
<#--        </div>-->
<#--    </div>-->
<#--    <div class="row ">-->
<#--        <div class="col-3 ">-->
<#--            <p class="labels">Describe the job:</p>-->
<#--        </div>-->
<#--        <div class="col-8 ">-->
<#--            <input type="description" id="describe" name="description">-->
<#--        </div>-->
<#--    </div>-->
<#--    <input type="hidden" name="_csrf" value="${_csrf.token}">-->
<#--    <div class="confirm">-->
<#--        <input type="submit" class="confirmbutton" onclick="alert('All information on DB!')" value="Submit">-->
<#--    </div>-->

<#--</form></#if>-->
<#--</body>-->
<#--</html>-->




<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel=" stylesheet " href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css " integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous " referrerpolicy="no-referrer " >
    <script src="https://kit.fontawesome.com/a58da105b1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet " href="css/style.css ">
    <link rel="stylesheet " href="css/normailze.css ">
    <!--    <link rel="stylesheet " href="css/footer.css ">-->

    <title>MAIN PAGE</title>
</head>

<body>
<div class="hero" >

    <nav>
        <div class="logo">
            <a href="/">RUDA</a>
        </div>
        <ul class="nav-links ">
            <li>
                <#if user.email??>
                <a href="/createvacanci">Create Vacancy</a>
                </#if>
            </li>
            <li>
                <a href=" ">Freelance </a>
            </li>
            <li>
                <a href="/help">Help </a>
            </li>
            <li>
                <a href="/vacancies">Vacancies</a>
            </li>
            <#if user.email??>
                <li>
                    <a href="/userNews">User News</a>
                </li>
            </#if>
        </ul>
        <ul class="nav-user ">
            <#if user.email??>
               <li>Имя Пользователя  <i>${user.email}</i></li>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Выйти"/>
                </form>
                <#if user.isAdmin()>
                    <a href="/admin">Admin Panel</a>
                </#if>
            <#else> <button class="login ">
                <a href="/login">Log In</a>
            </button>
            </#if>

        </ul>
        <div class="toggles ">
            <div class="account ">
                <i class="fa fa-user-o"></i>
            </div>
            <div class="burger ">
                <div class="line1 "></div>
                <div class="line2 "></div>
                <div class="line3 "></div>
            </div>
        </div>
    </nav>
    <div class="row" id="header">
        <div class="col-1">
            <h1>Looking for a job?</h1>
            <h2>Find your dream job<br>with Ruda easily</h2>
            <h3>Find jobs, employers and freelance projects easily with us</h3>


        </div>
    </div>
    <div class="containerr">
        <input type="text" class="textt"  placeholder="Register using email address shakir260@gmail.com">
        <button type="button" class="button1">Submit</button>
    </div>
    <div class="containerr-2">
        <img width="600px" class="chuvak" src="images/chuvak.png" alt="">
    </div>
    <h4 class="texttreg">✅ Free register</h4>      <h4 class="texttreg2">✅ Great Service</h4>

</div>
<div class="social-links">
    <p></p>
</div>

</div>
<div class="Popular_container">
    <h3 class="pop">Popular Job Categories</h3>
    <h1 class="lets">Let’s help you choose the <br>
        category you want</h1>
    <div class="container-lets">
        <div class="it-comp"><img class="message" src="images/Message.png"  width="500" height="333"><br>IT/Computer</div>
        <div class="finance"><img class="wallet" src="images/Wallet.png"  width="500" height="333"><br>Finance</div>

        <div class="media"><img class="wallet" src="images/Play.png"  width="500" height="333"><br>Media</div>
        <div class="engineer"><img class="wallet" src="images/Lock.png"  width="500" height="333"><br>Engineer</div>


    </div>
    <h3 class="seeall">See all category  -></h3>
</div>
<div class="row-2">
    <div class="col-6">
        <img src="images/funny-green.png" alt="">
    </div>
    <div class="col-5">
        <p>What do we provide?</p>
        <h2>Among the variety of jobs <br>
            we help you to find <br>
            the right one!</h2> <br>
        <h3>🟢Get a job for yourself easily <br> <br> 🟢Make money through your skills <br> <br>🟢Find a variety of internships</h3>
        <button type="button" class="btn1">Get started!</button>

    </div>

</div>


</div>
</div></div>

<div class="newcont">
    <div class="row ms-5">
        <div class="otzivi"></div>
        <h3 class="custrew">Customer reviews</h3>
        <h2 class="what">What our clients says about us</h2>

        <div class="col-lg-4 ">
            <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://s.hdnux.com/photos/56/03/63/12074229/3/1200x0.jpg" role="img"  preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

            <h2>Michelle Obama</h2>
            <p>With Ruda my life became less
                stressful, since <br>i can find my clients
                everywhere and anytime.</p>
            <p><a class="btn btn-secondary" href="#">Photographer</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="images/pidr.png" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

            <h2>Jack Harlow</h2>
            <p>As a senior of university, I didn’t have
                any <br> experience. BUT!  RUDA helped me so i took internship!</p>
            <p><a class="btn btn-secondary" href="#">Software Engineer</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://i.insider.com/5b9235bb5c5e5254548b59f5?width=1240" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

            <h2>Elon Musk</h2>
            <p>Useful website. I have found for my company <br>around 500 employees.
                Recommend it.</p>

            <p><a class="btn btn-secondary" href="#">Businessmen</a></p>
        </div><!-- /.col-lg-4 -->
    </div></div><!-- /.row -->





<footer class="row row-cols-5 py-5 my-5 border-top">
    <div class="col-3">
        <h5 class="ruda">RUDA</h5>
        <ul class="nav flex-column" id="flex-column0">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Join The Best. Be The Best</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">INSTAGRAM TWITTER</a></li>
        </ul>
    </div>
    <div class="col-3">
        <h5>Company</h5>
        <ul class="nav flex-column" id="flex-column1">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About Us</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Vacancies</a></li>
        </ul>
    </div>

    <div class="col-3">
        <h5>Services</h5>
        <ul class="nav flex-column" id="flex-column2">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">For employers</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Freelance</a></li>
        </ul>
    </div>

    <div class="col-3">
        <h5>Contact us</h5>
        <ul class="nav flex-column" id="flex-column3" >
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">E-mail: ruda@mail.ru</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Call-center: 87770707707</a></li>
        </ul>
    </div>
</footer>
<div class="container">
    <footer class="py-3 my-4">
        <p class="text-center text-muted">&copy;Copyright Ruda 2022. All Rights Reserved.</p>
    </footer>
</div>

<script src="./js/navbar.js "></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js " integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj " crossorigin="anonymous "></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js "></script>
</body>

</html>