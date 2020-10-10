<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>Seller Home</title>

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
       <style><%@include file="/mystyle.css"%></style>
       <style><%@include file="/styleHome.css"%></style>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
</head>
 <body>
                
            <header>
             <div id="mySidenav" class="sidenav">
          <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
          <a href="#" style="font-size: medium;">Most popular auctions</a>
          <a href="#" style="font-size: medium;">Popular today</a>
          <a href="#" style="font-size: medium;">Popular auctions</a>
          <a href="#" style="font-size: medium;">All categories</a>
          <a href="#" style="font-size: medium;">Seller account login</a>
          <a href="sellerProfile.jsp" style="font-size: medium;">My Profile</a>
          <a href="buyerHomePage.jsp" style="font-size: medium;">- Log Out -</a>
          
        </div>
        <span1 style=" position:absolute; top:0;left:0; font-size:25px;cursor:pointer" onclick="openNav()">&#9776;</span1>
              <h1>Bid<span>Big</span></h1>
              <br><br>
          
                <div style="position: absolute; top: 0; right: 0; width: 100px; text-align:right;">
                 
                </div>
            
           
           
              
              
                 <div class="big-search-box">
                        <input type="text" placeholder="SEARCH......." class="round"> 
                        
                 </div>
            </header>

                 
        <script>
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
              }
              
              function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
              }
              var yourDateToGo = new Date(); //here you're making new Date object
             yourDateToGo.setDate(yourDateToGo.getDate() + 1); //your're setting date in this object 1 day more from now
    
        var timing = setInterval( // you're making an interval - a thing, that is updating content after number of miliseconds, that you're writing after comma as second parameter
          function () {
    
            var currentDate = new Date().getTime(); //same thing as above
            var timeLeft = yourDateToGo - currentDate; //difference between time you set and now in miliseconds
    
            var days = Math.floor(timeLeft / (1000 * 60 * 60 * 24)); //conversion miliseconds on days 
            if (days < 10) days="0"+days; //if number of days is below 10, programm is writing "0" before 9, that's why you see "09" instead of "9"
            var hours = Math.floor((timeLeft % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)); //conversion miliseconds on hours
            if (hours < 10) hours="0"+hours;
            var minutes = Math.floor((timeLeft % (1000 * 60 * 60)) / (1000 * 60)); //conversion miliseconds on minutes 
            if (minutes < 10) minutes="0"+minutes;
            var seconds = Math.floor((timeLeft % (1000 * 60)) / 1000);//conversion miliseconds on seconds
            if (seconds < 10) seconds="0"+seconds;
    
            document.getElementById("countdown").innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s"; // putting number of days, hours, minutes and seconds in div, 
            document.getElementById("countdown-one").innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s";
            document.getElementById("countdown-two").innerHTML = days + "d " + hours + "h " + minutes + "m " + seconds + "s"; 
           
            //which id is countdown
    
            if (timeLeft <= 0) {
              clearInterval(timing);
              document.getElementById("countdown").innerHTML = "It's over"; 
              document.getElementById("countdown-one").innerHTML = "It's over";
              document.getElementById("countdown-two").innerHTML = "It's over";
              //if there's no time left, programm in this 2 lines is clearing interval (nothing is counting now) 
              //and you see "It's over" instead of time left
            }
          }, 1000);
    
    
            </script>
               <br>
               <br>
                <center><button type="button" class="btn btn-outline-success">CREATE AUCTION </button></center><br><br>
                <div class="container">
                  <div>
                  <strong> YOUR LIVE AUCTIONS </strong>
                  </div>
                </div>
              <br><br>
            <div class="row">
              
              <div class="col-lg-4"><center><div>
             <div class="card" style="width: 18rem;">
            <img src="https://images.complex.com/complex/image/upload/c_fill,g_center,h_640,w_640/fl_lossy,pg_1,q_auto/hhswhnsbvv89y2bkva3l.jpg" class="card-img-top"  height="300px" width="100px" >
            <div class="card-body">
             <h5 class="card-title">Rolex Watch</h5>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
             </div>
            
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Cras justo odio</li>
           </ul>
           
      <div>
        <span class="list-group-item" id="countdown">COUNTDOWN</span>
      </div>
      </div>
      </div></center></div>

      <div class="col-lg-4"><center><div>
      <div class="card" style="width: 18rem;">
        <img src="https://luxurylaunches.com/wp-content/uploads/2018/12/Sinatra.jpg" class="card-img-top" alt="..."  height="300px" width="100px">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Cras justo odio</li>
        </ul>
        
        <div>
          <span class="list-group-item" id="countdown-one">COUNTDOWN</span>
        </div>
      </div>
      </div></center></div>

      <div class="col-lg-4"><center><div>
      <div class="card" style="width: 18rem;">
        <img src="https://mir-s3-cdn-cf.behance.net/project_modules/disp/1b49eb16832191.562b1e68cf6d3.jpg" class="card-img-top" alt="..."  height="300px" width="100px">
        <div class="card-body">
          <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Cras justo odio</li>
        </ul>
        
        <div>
          <span class="list-group-item" id="countdown-two">COUNTDOWN</span>
        </div>
      </div>
      </div>
    </div></center></div> <br><br><br>
                          
       <div class="container">
        <div>
           <center> <strong> YOUR UPCOMING AUCTIONS </strong> </center>
        </div>
    </div><br>
        

    <div class="row">
      

        <div class="col-lg-4"><center><div>
    <div class="card" style="width: 18rem;">
        <img src="https://i.ebayimg.com/images/g/0ugAAOSwhdFerpc3/s-l300.png" class="card-img-top" alt="..." height="300px" width="100px">
        <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
        <li class="list-group-item">Cras justo odio</li>
        </ul>
        
    </div>
    </div></center></div>

    <div class="col-lg-4"><center><div>
    <div class="card" style="width: 18rem;">
        <img src="https://cdnc.lystit.com/photos/2013/11/07/topshop-black-faux-leather-biker-jacket-product-1-14750015-108397731.jpeg" class="card-img-top" alt="..." height="300px" width="100px"> 
        <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
        <li class="list-group-item">Cras justo odio</li>
        </ul>
        
    </div>
    </div></center></div>

    <div class="col-lg-4"><center><div>
    <div class="card" style="width: 18rem;">
        <img src="https://i.pinimg.com/736x/f9/e2/35/f9e235d84d7cb26fdede1539651c1f42--hermes-live.jpg" class="card-img-top" alt="..." height="300px" width="100px">
        <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        </div>
        <ul class="list-group list-group-flush">
        <li class="list-group-item">Cras justo odio</li>
        </ul>
        
    </div>
    </div>
    </div></center></div><br><br>
   
              
    <div class="row">
        <div class="col-lg-3">

        </div>

        <div class="col-lg-3">
          <h6>Bidbig's online auction rules</h6> <hr>
          <ul style="font-size: small;">
            <li>Group bidding not allowed</li>
            <li>Do not use 3rd party bidding softwares</li>
            <li>phalanaa dimkhana</li>
          </ul>
          
          
        </div>
        <div class="col-lg-3">
          <h6>Secure and safe online bidding</h6> <hr>
          <p style="font-size: x-small;"> Bidig adheres to some random security kuch bhi bakwaas ye woo, some random stuff regarding security compliances. some random stuff regarding security compliances.</p>
          
        </div>
        <div class="col-lg-3">
          
          
        </div>
        
        
      </div>

     
   </div>

  <footer class="footer-distributed">    
              
    
          <div class="footer-left">

              <h3>Bid<span>Big</span></h3>

              <p class="footer-links">
                  <a href="#">Terms & Conditions</a>
                  ·
                  <a href="#">Hot Products</a>
                  ·
                  <a href="#">Legal Terms of use</a>
                  ·
                  <a href="#">Privacy</a>
                  ·
                  <a href="#">FAQs</a>
                  ·
                  <a href="#">Partnership</a>
                  ·
                  <a href="#">About Us</a>
                  ·
                  <a href="#">Contact Us</a>
                  
              </p> <br>

              <p class="footer-company-name">Bidbig &copy; 2020</p>
          </div>

          <div class="footer-center">

              <div>
                  <i class="fa fa-map-marker"></i>
                  <p><span>21 Young Road</span> Delhi, India</p>
              </div>

              <div>
                  <i class="fa fa-phone"></i>
                  <p>+1 222 654899</p>
              </div>

              <div>
                  <i class="fa fa-envelope"></i>
                  <p><a href="mailto:support@company.com">contact@bidbig.com</a></p>
              </div>

          </div>

          <div class="footer-right">

              <p class="footer-company-about">
                  <span>About the company</span>
                  BidBig is India's leading and reputed private online auction portal operating in 
                  the specialised space of buying and selling surplus inventory.
              </p>

              <div class="footer-icons">

                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-linkedin"></i></a>
                  <a href="#"><i class="fa fa-github"></i></a>

              </div>

          </div>

      </footer>

  </body>
</html>