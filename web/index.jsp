<%--
  Created by IntelliJ IDEA.
  User: abdellebay
  Date: /2/12/18
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/db/dbconn.jsp" %>
<%@ page import="java.sql.*" %>

<%-- <?php
include("function/login.php");
include("function/customer_signup.php");
?> --%>

<!DOCTYPE html>
<html>
<head>
  <style type="text/css">
    .mad1{
      text-shadow: 1px 1px green;
    }
  </style>
  <title>Home</title>
  <link rel="icon" href="/img/logo.jpg" />
  <link rel = "stylesheet" type = "text/css" href="/css/style.css" media="all">
  <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
  <script src="/js/bootstrap.js"></script>
  <script src="/js/jquery-1.7.2.min.js"></script>
  <script src="/js/carousel.js"></script>
  <script src="/js/button.js"></script>
  <script src="/js/dropdown.js"></script>
  <script src="/js/tab.js"></script>
  <script src="/js/tooltip.js"></script>
  <script src="/js/popover.js"></script>
  <script src="/js/collapse.js"></script>
  <script src="/js/modal.js"></script>
  <script src="/js/scrollspy.js"></script>
  <script src="/js/alert.js"></script>
  <script src="/js/transition.js"></script>
  <script src="/js/bootstrap.min.js"></script>
</head>
<body>

<!-- Header -->
<div id="header">
  <img src="/img/logo.jpg">
  <label>SportShoes</label>
  <ul>
    <li><a href="#signup"   data-toggle="modal">Sign Up</a></li>
    <li><a href="#login"   data-toggle="modal">Login</a></li>
  </ul>
</div>

<!-- Login -->
<div id="login" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:400px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
    <h3 id="myModalLabel">Login...</h3>
  </div>
  <form method="post" action="Servlet">
  <div class="modal-body">
      <div style="text-align: center;">
        <input type="email" name="email" placeholder="Email" style="width:250px;">
        <input type="password" name="password" placeholder="Password" style="width:250px;">
      </div>
  </div>
  <div class="modal-footer">
    <input class="btn btn-primary" type="submit" name="login" value="Login">
    <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>

  </div>
  </form>
</div>

<!-- Sign Up -->
<div id="signup" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:700px;">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
    <h3 id="myModalLabel">Sign Up Here...</h3>
  </div>
    <form method="post">
    <div class="modal-body">
    <div style="text-align: center;">
        <input type="text" name="firstname" placeholder="Firstname" required>
        <input type="text" name="lastname" placeholder="Lastname" required>
        <input type="text" name="address" placeholder="Address" style="width:430px;"required>
        <input type="text" name="country" placeholder="Province" required>
        <input type="text" name="zipcode" placeholder="ZIP Code" required maxlength="5">
        <input type="text" name="mobile" placeholder="Mobile Number" maxlength="11" required="">
        <input type="text" name="telephone" placeholder="Telephone Number" maxlength="11">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
    </div>
  </div>
  <div class="modal-footer">
    <input type="submit" class="btn btn-primary" name="signup" value="Sign Up">
    <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">Close</button>
  </div>
  </form>
</div>

<br>


<div id="container">

  <!-- navigation bar -->
  <div class="nav">

    <ul>
      <li><a href="index.jsp"><i class="icon-home"></i>Home</a></li>
      <li><a href="product.php"><i class="icon-th-list"></i>Product</a>
      <li><a href="aboutus.php"><i class="icon-bookmark"></i>About Us</a></li>
      <li><a href="contactus.php"><i class="icon-inbox"></i>Contact Us</a></li>
      <li><a href="privacy.php"><i class="icon-info-sign"></i>Privacy Policy</a></li>
      <li><a href="faqs.php"><i class="icon-question-sign"></i>FAQs</a></li>
    </ul>
  </div>

  <!-- Carousel · Bootstrap -->
  <div id="carousel">
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">

        <div class="active item" style="padding:0; border-bottom:0 solid #111;">
          <img src="/img/banner1.jpg" class="carousel">
        </div>

        <div class="item" style="padding:0; border-bottom:0 solid #111;">
          <img src="/img/banner2.jpg" class="carousel">
        </div>

        <div class="item" style="padding:0; border-bottom:0 solid #111;">
          <img src="/img/banner3.jpg" class="carousel">
        </div>

      </div>
      <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
  </div>

  <!-- video -->
  <div id="video">
    <video controls autoplay width="445px" height="300px">
      <source src="/video/commercial.mp4" type="video/mp4">
    </video>
  </div>

  <!-- Product -->
  <div id="content">
    <div id="product" style="position:relative; margin-top:30%;">
      <div style="text-align: center;"><h2><legend>Feature Items</legend></h2></div>
      <br />

        <% ResultSet rs = stmt.executeQuery("select * from product");
            while (rs.next()) {%>
        <div class='float'>
            <div style="text-align: center;">
                <a href="details.jsp?id=<%=rs.getString("product_id")%>">
                    <img class='img-polaroid' src="/photo/<%=rs.getString("product_image")%>" height = '300px' width = '300px'>
                </a>
                <%=rs.getString("product_name")%>
                <br />
                <strong class='mad'><%=rs.getString("product_price")%></strong><em class='mad1'> MAD</em>
                <br />
                <h3 class='text-info' style='position:absolute; margin-top:-80px; text-indent:15px;'> Size: <%=rs.getString("product_size")%></h3>
            </div>
        </div>
        <%}%>
    </div>



  </div>

  <br />
</div>


<br />

<!-- Footer -->
<div id="footer">
  <div class="foot">
    <label style="font-size:17px;"> Copyright &copy; </label>
    <p style="font-size:25px;">SportShoes Inc. 2018</p>
  </div>

  <div id="foot">
    <h4>Links</h4>
    <ul>
      <a href="http://www.facebook.com/" target="_blank"><li>Facebook</li></a>
      <a href="http://www.twitter.com/" target="_blank"><li>Twitter</li></a>
      <a href="http://www.pinterest.com/" target="_blank"><li>Pinterest</li></a>
      <a href="https://www.instagram.com/" target="_blank"><li>Instagram</li></a>
    </ul>
  </div>
</div>
</body>
</html>
