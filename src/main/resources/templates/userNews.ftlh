<!DOCTYPE html>
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

    <title>Vacancies</title>
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
                <li><a href="/user-page">${user.email}</a></li>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="??????????"/>
                </form>
                <#if user.isAdmin()>
                    <a href="/admin">Admin Panel</a>
                </#if>
            <#else> <button class="login ">
                <a href="/login">Log In</a>
            </button>
            </#if>

        </ul>
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
    <a href="/createvacancy"></a>
    <div class = "row" id="header">
        <h1 class="text">Search for jobs</h1>
    </div>
    <section id="search" class="search-box">
        <form action="/search" method="post">
            <input type="text"  name="job" placeholder="search for job"/>
            <input type="submit" value="Search" class="searchbtn">
            <!--            <a method="post" class="icon">-->
            <!--                <i class="fas fa-search"></i>-->
            <!--            </a>    -->
        </form>
        <!--</form>-->
    </section>
    <section>
        <ul class="search-filter">
            <a class="list search-filter-active" data-filter="All">Browse Latest</a>
            <a class="list"  href="/filter" data-filter="Filtered">Filter</a>
            <a class="list" data-filter="Saved">Saved</a>
        </ul>
    </section>

    <#list newss as news>

        <div class="boxone">
            <img class="jobicon1" width="100px" height="100px" src="data:image/jpeg;base64,${news.image?if_exists}">
            <p class="labss"><strong>${news.industry}</strong>${news.country}</p>
            <img class="users" width="20px" height="20px" src="images\users.png">
            <p class="employees">${news.employees}</p>
            <img  class="active" src="images\active.png">
            <p class="descr">${news.description}</p>
            <p class="learn">
                <#if news.apply??>
                    <#list news.apply as aplly>
                        <a href="/user/${aplly.id}">${aplly.email}</a>
                    <#else>nobody applied
                    </#list>
                </#if></p>
            <div class="appone">
                <p class="time">${news.time}</p>
                <p class="jobone">${news.job}</p>
                <div class="salary">
                    <p class="realsalary">${news.salary}</p>
                </div>
                <div class="type">
                    <p class="realtype">${news.time}</p>
                </div>

                <img class="star" src="images\staar.png">
                <form action="/news/delete/${news.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Delete"/>
                </form>
            </div>

        </div>

    <#else>
        <h3 class="tt" style="margin-left: 114px; margin-top: 200px">Sorry, no vacancies that satisfy your requirements... Calm down and stay in bed</h3>
    </#list>
</div>



<div id="footer" class="container">

</div>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).on('click', '.search-filter li', function (){
        $(this).addClass('search-filter-active').siblings().removeClass('search-filter-active')
    });
</script>

</body>
</html>