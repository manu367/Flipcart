<!doctype html>
<html lang="en">

<head>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
          crossorigin="anonymous">

    <title>Login Page</title>
</head>

<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- STARTING CONTAINER -->
<div class="container" sty>

    <div class="card"
         style="max-width: 25rem; margin: auto; margin-top:100px;">
        <div class="card-header text-center">
            <h4>Admin Panel</h4>
        </div>
        <c:if test="${sessionScope.message!=null}">
            <div  class="container">
                <div class="alert ${sessionScope.message.messageType} text-center" role="alert">
                    <span>${sessionScope.message.message}</span>
                </div>
                <span>${sessionScope.remove("message")}</span>
        </div>

        </c:if>

        <div class="card-body">
            <form action="login.jsp" method="post">
                <div class="form-group">
                    <label for="exampleInputEmail1" class="ml-2" >Email</label> <input
                        type="text" name="email" class="form-control" id="exampleInputEmail1"
                        aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1" class="ml-2" > Password</label> <input
                        type="password" name="password" class="form-control" id="exampleInputPassword1"
                        placeholder="Password">
                </div>
                <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Check
                        me out</label>
                </div>
                <div class="text-center mt-3" >
                    <button type="submit" class="btn btn-block btn-sm btn-primary">Login</button>
                </div>

                <div class="text-center mt-4" >
                    <a href="#"  >
                        Forget Password
                    </a>
                </div>

            </form>



        </div>
    </div>

</div>





















<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>