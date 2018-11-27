<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body{
        font-family: Verdana, sans-serif;
        margin:0;
        padding: 0;
        background-size:cover;
        background-image:url(background.jpg); 
        background-repeat:no-repeat; 
        background-attachment: scroll;
    }
#mainCotent{
        margin-top: 101px;
        width: 100%;
        height: 100%;
    }
#allArea{
        margin: 0;
        padding: 0;
        position:absolute;
        width: 100%;
        height: 100%;
    }
    #globalArea{
        margin:0;
        padding: 0;
        position:absolute;
        background: #FAF4EE; 
        width: 100%; 
        height: 100px;
        
        }
        #subGNB{
        margin-top:10px;
        margin-left:20px;
        width:1100px;
        height:90px;
    }
    .logo{
        background-image: url(logo.png);
        background-size: 100%;
        width:80px;
        height: 80px;
        margin: 0;
        padding: 0;
        margin-left: 20%;
        position: absolute;
    }
    .logo>a {
        background-image: url(logo.png);
        display: block;
        width: 80px;
        height:80px;
    }
    .topNav{
        margin: 0;
        padding: 0;
        position: absolute;
        right: 450px;
        top:20px;
        font-size: 80%;
    }
    .topNav>ul{   
        list-style: none;
        margin: 0;
        padding: 0;
        font-size:120%;
        text-align: center;
    }   
    .topNav>ul>li{
        display: inline;
        text-align: center;
        margin: 0;
        padding-right:20px;
    }
    .mainMenu{
        height: 20px;
        margin:0;
        padding:0px;
        position: absolute;
        right:400px;
        top:55px;
        font-size: 120%;
        
    }
    .mainMenu>ul{
        list-style: none;
        margin: 0;
        padding: 0;
        right: 90px;
        font-size: 100%;
    }
    .mainMenu>ul>li{
        margin: 0;
        padding-right: 30px;
        display: inline;
        text-align: center;
    }
    a:link{
        text-decoration: none;
        color:black;
    }
    a:visited{
        color:black;
    }
.mySlides {display: none;}
img {vertical-align: middle;
        width: 100%;
        height: 700px;
    }

/* Slideshow container */
.slideshow-container {
  width: 100%;
  position: absolute;
  padding:0;
  margin-top:40px;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}

.slideBtn{
    text-align: center;
    visibility: hidden;
}
</style>
</head>
<body>
        <div id="allArea">
                <div id="globalArea">
                   <div id="subGNB">
                       <h1 class="logo"><a href=#></a></h1>
                       <nav class="topNav">
                           <ul>
                               <li>
                                   <a href="#">Sign In</a>
                               </li>
                               <li>
                                   <a href="#">MyPage</a>
                               </li>
                           </ul>
                       </nav>
                       <nav class="mainMenu">
                               <ul>
                                       <li>
                                           <a href="#">MENU</a>
                                       </li>
                                       <li>
                                           <a href="#">STAMP</a>
                                       </li>
                                       <li>
                                           <a href="#">COUPON</a>
                                       </li>
                                   </ul>
                       </nav>
                   </div>
               </div>
               <div id="mainCotent">
                       
                       <div class="slideshow-container">
                       
                       <div class="mySlides fade">
                         <div class="numbertext">1 / 3</div>
                         <img src="i1.jpg">
                         <div class="text">Caption Text</div>
                       </div>
                       
                       <div class="mySlides fade">
                         <div class="numbertext">2 / 3</div>
                         <img src="i2.jpg">
                         <div class="text">Caption Two</div>
                       </div>
                       
                       <div class="mySlides fade">
                         <div class="numbertext">3 / 3</div>
                         <img src="i3.jpg" >
                         <div class="text">Caption Three</div>
                       </div>
                       
                       </div>
                       <br>
                       
                       <div class="slideBtn">
                         <span class="dot"></span> 
                         <span class="dot"></span> 
                         <span class="dot"></span> 
                       </div>
               </div>   
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</body>
</html> 
