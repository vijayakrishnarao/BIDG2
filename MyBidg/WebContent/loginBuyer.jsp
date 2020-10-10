<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Buyer Login</title>
    <style>
        h1 {
            font-weight: 400;
        }

        #username {
            width: 60%;
        }

        #password {
            width: 60%;
        }

        #forgotpassword {
            margin-left: 1%;
            font-weight: 650;
            font-size: small;
        }

        label {
            font-weight: 650;
            font-size: small;
        }

        p {
            font-weight: 500;
            font-size: small;
        }

        form {
            border: 2px solid gray;
            max-width: 400px;
            border-radius: 5%;
        }

        #usernamelabel {
            margin-left: -37%;
        }

        #checkboxdiv {
            margin-left: -32%;
        }

        .termsp {
            margin-left: 0%;
            font-size: small;
            font-weight: 650;
        }

        #otherlogin {
            font-size: medium;
            margin-left: 18%;
        }
    </style>
</head>
<body>
    <center><br>
        <form action="buyerHomePage.jsp">
            <h1>Sign In</h1><br><strong>- &nbsp;&nbsp;  Hello Buyer ! &nbsp;&nbsp; -</strong><br /> <br />
            <label for="username" id="usernamelabel">Email or Phone</label><br />
            <input type="email" name="username" id="username" required="required" /><br />  <!-- If this doesnt works, try required="required" -->
            <label for="password">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><a href=""
                id="forgotpassword">Forgot your password?</a><br />
            <input type="password" name="password" id="password" required="required" /><br />
            <div class="form-check" id="checkboxdiv">
                <input class="form-check-input" type="checkbox" value="" id="remembercheck" />
                <label class="form-check-label" for="remembercheck">Remember Me</label>
            </div><br />
            <button class="btn btn-outline-primary" type="submit" id="signinbutton">Sign In</button><br /><br />
            <p class="termsp">By continuing, you agree to BidBig's<br />
                <a href="">Conditions of Use</a> and <a href="">Privacy Notice</a>.</p>
            <p>New to BidBig?</p>
            <a class="btn btn-link" href="registerBuyer.jsp">Create Your BidBig Buyer Account</a><br/>
            <pre>&nbsp;</pre>
        </form>
        <p id="otherlogin">Go to <a href="loginSeller.jsp">Seller Login</a></p>

    </center>
</body>
</html>