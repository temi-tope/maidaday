<%-- 
    Document   : Registration
    Created on : 02-Jul-2017, 22:42:23
    Author     : OLUWASEUN
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <title>Maid A Day</title>
      <link rel="stylesheet" href="css/components.css">
      <link rel="stylesheet" href="css/responsee.css">
      <link rel="stylesheet" href="owl-carousel/owl.carousel.css">
      <link rel="stylesheet" href="owl-carousel/owl.theme.css">
      <!-- CUSTOM STYLE -->  
      <link rel="stylesheet" href="css/template-style.css">
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="js/modernizr.js"></script>
      <script type="text/javascript" src="js/responsee.js"></script>   
      <SCRIPT TYPE="text/javascript">
  function popupform(myform, windowname) { 
    if (! window.focus)return true;
    window.open('', windowname, 'height=200,width=400,scrollbars=yes');
    myform.target=windowname; 
    return true; 
  } 
</SCRIPT>
      <!--[if lt IE 9]>
	      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
      <![endif]-->
      
   </head>
   
   
   <body class="size-1140">
      <!-- TOP NAV WITH LOGO -->  
      <header>
         <nav>
            <div class="line">
               <div class="top-nav">              
                  <div class="logo hide-l">
                     <img src="img/logo.png" alt="">
                  </div>                  
                  <p class="nav-text">Custom menu text</p>
                  <div class="top-nav s-12 l-5">
                     <ul class="right top-ul chevron">
                        <li><a href='index.jsp'>Home</a>
                        </li>
                         <li><a href='product.jsp'>Product</a>
                        </li>
                        <li><a href='service.jsp'>Services</a>
                        </li>
                     </ul>
                  </div>
                  <ul class="s-12 l-2">
                     <li class="logo hide-s hide-m">
                        <img src="img/logo.png" alt="">
                     </li>
                  </ul>
                  <div class="top-nav s-12 l-5">
                     <ul class="top-ul chevron">
                         <li><a href='gallery.jsp'>Gallery</a>
                        </li>
                        <li>
                           <a>Company</a>			    
                           <ul>
                              <li><a href='Login.jsp'>Customer</a>
                              </li>
                              <li><a href='Login.jsp'>Manager</a>
                              </li>
                              <li>
                                 <a href='Login.jsp'>Administrator</a>				  
                                 
                              </li>
                           </ul>
                        </li>
                        <li><a href='contact.jsp'>Contact</a>
                        </li>
                     </ul> 
                  </div>
               </div>
            </div>
         </nav>
      </header>
      <section>
         <div id="head">
            <div class="line">
               <h1>REGISTRATION PAGE</h1>
            </div>
         </div>
         <div id="content" class="left-align contact-page">
            <div class="line">
               <div class="margin">
                  
                   
                  <div class="s-12 l-6">
                     <h2>Register</h2>
                     <form class="customform" action="insert.jsp">
                        <div class="s-12 l-7"><input name="email" placeholder="e-mail" title="Your e-mail" type="text" /></div>
                        <div class="s-12 l-7"><input name="fristname" placeholder="Firstname" title="Your name" type="text" /></div>
                        <div class="s-12 l-7"><input name="lastname" placeholder="Lastname" title="Your name" type="text" /></div>
                         <div class="s-12 l-7"><select name="sex" >
                            <option>Male </option>
                            <option>Female </option></select></div>
                        <div class="s-12"><textarea placeholder="Address" name="address" rows="5"></textarea></div>
                        <div class="s-12 l-7"><input name="username" placeholder="username" title="Your username" type="text" /></div>
                        <div class="s-12 l-7"><input name="password" placeholder="password" title="Your password" type="text" /></div>
                        <div class="s-12 l-7"><input name="conpassword" placeholder="Confirm password" title="Your password" type="text" /></div> 
                        <br>  
                        <div class="s-12 m-6 l-6"><button type="submit">Register</button></div>
                        
                     </form>
                  </div>
               </div>
            </div>
         </div>
         	
         
         <div id="fourth-block">
            <div class="line">
               <div id="owl-demo2" class="owl-carousel owl-theme">
                  <div class="item">
                     <h2>Amazing responsive template</h2>
                     <p class="s-12 m-12 l-8 center">.................
                     </p>
                  </div>
                  <div class="item">
                     <h2>Responsive components</h2>
                     <p class="s-12 m-12 l-8 center">..................
                     </p>
                  </div>
                  <div class="item">
                     <h2>Retina ready</h2>
                     <p class="s-12 m-12 l-8 center">....................
                     </p>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- FOOTER -->   
      <footer>
         <div class="line">
            <div class="s-12 l-6">
               <p>Copyright 20117, 
               </p>
            </div>
            <div class="s-12 l-6">
               <p class="right">
                  <a class="right">Design and coding by Ogungbesan Temitope</a>
               </p>
            </div>
         </div>
      </footer>
      <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>   
      <script type="text/javascript">
         jQuery(document).ready(function($) {  
           $("#owl-demo").owlCarousel({
         	slideSpeed : 300,
         	autoPlay : true,
         	navigation : false,
         	pagination : false,
         	singleItem:true
           });
           $("#owl-demo2").owlCarousel({
         	slideSpeed : 300,
         	autoPlay : true,
         	navigation : false,
         	pagination : true,
         	singleItem:true
           });
         });	
          
      </script> 
   </body>
</html>