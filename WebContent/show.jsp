<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>good job show</title>
<link rel="icon" type="image/png" href="image/goodjob-header32px.png">
<!-- Bootstrap読み込み -->
<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="imagepicker/image-picker.css"/>

<!-- style.cssの読み込み -->
<link rel="stylesheet" type="text/css" href="css/style.css"/>

<!-- JQuery読み込み -->
<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
<script src="imagepicker/image-picker.min.js" type="text/javascript"></script>
<script src="css/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <div class="container">
    <div class="row">
    <div class="col-sm-12  text-primary"><!--CSSのグリッドシステム12分割のものを6-6に再分割-->
        <header>
        <h1>
            SS2 GOODJOB
            <img src="image/goodjob-header32px.png"></img>
        </h1>
        </header>
    </div>
    </div>
</div>
    <hr>

 <div class="container">
 	<h3>${targetRegMonth} GOODJOB一覧</h3>
    <form action="result" method="post">
    <div class="row">
        <div class="col-sm-8">
        <div class="form-group">
        <div id="carousel-1" class="carousel slide" data-ride="carousel" data-interval="0">
          <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="card w-100">
                    <div class="card-header text-left">
                           <span>GOODJOBカード一覧</span>
                    </div>
                    <img class="card-img-bottom" src="image/carusel-end.png" alt="あああああああああ">
                    <div class="card-img-overlay text-center cd-text-font text-white">
                            <p class="card-text" >
                                スライドしてください
                            </p>
                    </div>
                </div>
            </div>
		<c:forEach var="message" items="${messageList}">
            <div class="carousel-item">
                <div class="card w-100">
                    <div class="card-header text-left">
                        <span>${message.fromName}  ▶︎   ${message.toName}</span>
                    </div>
                        <img class="card-img-bottom" src="${message.cardType}">
                        <div class="card-img-overlay text-center cd-text-font">
                            <p class="card-text">
                                ${message.message}
                            </p>
                        </div>
                </div><!--card-->
            </div>
            </c:forEach>

            <div class="carousel-item">
                <div class="card w-100">
                    <div class="card-header text-left">
                        <span>GOODJOB発表</span>
                    </div>
                    <img class="card-img-bottom" src="image/carusel-end.png">
                    <div class="card-img-overlay text-center cd-text-font  text-white">
                            <p class="card-text" >
                                今月のGooDJobカードは以上です
                            </p>
                            <button type="submit" class="btn btn-primary btn-block" >
                                GJ賞を発表する
                            </button>
                    </div>
                </div>
            </div>
          </div><!--carousel-inner-->
          <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div><!--carusel-->
        </div><!--formgroup-->
      </div><!--col-->
    </div><!--row-->
    </form>
  <div class="row">
       <div class="col-sm-6">
       <a href="top">TOPに戻る</a>
       </div>
   </div>
</div><!--container-->

 <hr>
<div class="container">
 <div class="row">
    <div class="col-sm-8">
        <footer>
            <p>&copy; Takahiro Mori</p>
        </footer>
    </div>
 </div>
</div><!--container-->
</body>
</html>