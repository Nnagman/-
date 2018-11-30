<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="index.css">
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
