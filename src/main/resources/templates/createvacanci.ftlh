<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel=" stylesheet " href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css " integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous " referrerpolicy="no-referrer " >
    <script src="https://kit.fontawesome.com/a58da105b1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet " href="css/normalize.css ">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/createva.css">
    <title>createva</title>
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
    </div>


<div class="formes">
    <form action="/news/create" method="POST" class="regbox" enctype="multipart/form-data">
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Country:</p>
            </div>
            <div class="col-8 ">
                <input type="text" id="country" name="country" required>
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Company:</p>
            </div>
            <div class="col-8 ">
                <input type="text" id="company" name="company" required>
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Industry:</p>
            </div>
            <div class="col-8 ">
                <input type="text" id="industry" name="industry" required>
            </div>
        </div>

        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Job:</p>
            </div>
            <div class="col-8 ">
                <select type="text" id="job" name="job" required>
                    <option>Software</option>
                    <option>Abuser</option>
                    <option>Baker</option>
                    <option>Seller-Consultant</option>
                    <option>Selling</option>
                    <option>CEO</option>
                    <option>Professor</option>
                    <option>Teaching</option>
                    <option>Perfumer</option>
                </select>
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Time:</p>
            </div>
            <div class="col-8 ">
                <select name="time" id="time">
                    <option>Part-time</option>
                    <option>Full-time</option>
                </select>            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Type:</p>
            </div>
            <div class="col-8 ">
                <select name="type" id="type">
                    <option>Based</option>
                    <option>Remote</option>
                </select>
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Salary:</p>
            </div>
            <div class="col-8 ">
                <input type="number" id="salary" name="salary">
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Product Image:</p>
            </div>
            <div class="col-8 ">
                <input type="file" id="customFile" name="file"  required>
                <label class="custom-file-label"
                       for="customFile"></label>
            </div>
        </div>

        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Number of Employees:</p>
            </div>
            <div class="col-8 ">
                <input type="number" id="employees" name="employees">
            </div>
        </div>
        <div class="row ">
            <div class="col-3 ">
                <p class="labels">Describe the job:</p>
            </div>
            <div class="col-8 ">
                <input type="description" id="describe" name="description">
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <div class="confirm">
            <input type="submit" class="confirmbutton" onclick="alert('All information on DB!')" value="Submit">
        </div>

    </form>
</div>
<!--<img src="images/yogaman.png" alt="" id="yoga">-->


</body>
</html>