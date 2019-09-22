<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>College Factory</title>
<html>
<head>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<link type="text/css" rel="stylesheet" href="style/util.css">
<link type="text/javascript" rel="javascript" href="style/main.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/javascript.util/0.12.12/javascript.util.min.js"></script>
<link type="text/css" rel="stylesheet" href="style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">COLLEGE FACTORY</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="result.html">Result</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Syllabus
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="http://www.ipu.ac.in/syllabus/syllbca191011.pdf">BCA</a>
          <a class="dropdown-item" href="http://www.ipu.ac.in/syllabus/affiliated/bbagen.pdf">BBA</a>
          <a class="dropdown-item" href="http://vips.edu/wp-content/uploads/2017/09/B.ComHOLD-SYLLABUS.pdf">B.COM</a>
          <a class="dropdown-item" href="http://www.ipu.ac.in/syllabus/affmca260710.pdf">MCA</a></div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="post.html">Post</a>
      </li>&nbsp &nbsp &nbsp &nbsp
      <li class="nav-item">
      <form id ="f" action="Logout" method="post">
      <a href="javascript:submit()"><button type="button" class="btn btn-outline-primary">Logout</button></a>
      </form>
      <script type="text/javascript">
         function submit()
         {
        	 document.forms["f"].submit();
         }
      </script>
    </li>&nbsp &nbsp
  <%
  if(session.getAttribute("user")==null)
	  response.sendRedirect("login1.html");
  %>
    <a href="contact.html"><button type="button" class="btn btn-outline-primary">Contact Us</button></a>
    </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/img1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image/img2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="image/img3.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div class="container-fluid posts">
  <div class="row">
    <div class="col-lg-9">
<div class="card mb-3">
  <img src="image/p1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="showWeb.html"> <h5 class="card-title">Choose your better path with Infosys </h5></a>
    <p class="card-text">Here is good news for last year students. Infosys is inviting you for the last call on this friday morning. Get prepared with your Cv's and "Best Of Luck"</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
<div class="card mb-3">
   <img src="image/p2.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="showWeb.html"><h5 class="card-title">Get easy Placement</h5></a>
    <p class="card-text">Due to less job opportunity in the market, the competetion is being rising day by day.So is solution to start preparation for tests </p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
 
</div>
<div class="card mb-3">
  <img src="image/p1.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="showWeb.html"><h5 class="card-title">Pool Campus Drive</h5></a>
    <p class="card-text">The day you were waiting for is over now,On next week most reputed cmpanies are reaching to our College. So what you waiting for  read their criteria and [packeges]  </p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
</div>
<div class="card mb-3">
  <img src="" class="card-img-top" alt="...">
  <div class="card-body">
    <a href="showWeb.html"> <h5 class="card-title"> ${user }</h5></a>
    <p class="card-text"> ${user1 } </p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
<div class="col-lg-3">
  <div class="card border-primary mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-primary">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-secondary mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-secondary">
    <h5 class="card-title">Secondary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-success mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-success">
    <h5 class="card-title">Success card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-danger mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-danger">
    <h5 class="card-title">Danger card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-warning mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-warning">
    <h5 class="card-title">Warning card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-info mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-info">
    <h5 class="card-title">Info card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-light mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h5 class="card-title">Light card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
<div class="card border-dark mb-3" style="max-width: 18rem;">
  <div class="card-header">Header</div>
  <div class="card-body text-dark">
    <h5 class="card-title">Dark card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>
</div>
</div>
</div>
<footer class="footer">
    <div class="container">
       <div class="footer_logo"><a href="index.html">College Factory</a></div>
       <div class="copyright">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made by Himanshu Prajapati and Team <i class="fa fa-heart-o" aria-hidden="true"></i>  <a href="index.html" target="_blank">College Factory</a>
</div>
</div>

</footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/jquery.mb.YTPlayer-3.1.12/jquery.mb.YTPlayer.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/masonry/masonry.js"></script>
<script src="plugins/masonry/images_loaded.js"></script>
<script src="js/custom.js"></script>


</body>
</html>