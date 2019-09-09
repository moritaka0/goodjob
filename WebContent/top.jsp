<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>goodjob TOPページ</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/png" href="image/goodjob-header32px.png">

	<!-- Bootstrap読み込み -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap/css/bootstrap.css"/>
	<!-- style.cssの読み込み -->
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<!-- JQuery読み込み -->
	<script src="js/jquery-3.4.1.min.js" type="text/javascript"></script>
	<!-- Bootstrap js読み込み -->
	<script src="css/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<style type="text/css">
    /*ここに調整CSS記述*/
    .jumbotron { background:url(image/suumo-top.JPG) center 60% no-repeat; background-size: cover;}
    </style>
</head>
<body>
<%@page import="bean.TopBean" %>
<%TopBean topBean = (TopBean)request.getAttribute("topBean");%>

<div class="container">
    <div class="row">
    <div class="col-sm-6  text-primary"><!--CSSのグリッドシステム12分割のものを6-6に再分割-->
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
     <div class="row justify-content-center">
     <div class="col-auto">
         <figure class="figure">
             <img src="image/suumo-top.JPG" class="figure-img img-fluid rounded-circle"></img>
         </figure>
     </div>
     </div>
    <div class="row">
        <div class="col-sm-4">
        <div class="card w-100">
          <img class="card-img-top　figure-img img-fluid rounded-circle" src="image/pen-icon.png" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">GoodJobカードを書く</h4>
            <p class="card-text">
              GooDJobカードが書けます。今月は<%=topBean.getMonth()%>月分が対象になります.
            </p>
            <a href="form" class="btn btn-primary btn-block">カードを書く</a>
          </div>
        </div>
        </div>
        <div class="col-sm-4">
        <div class="card w-100">
          <img class="card-img-top　figure-img img-fluid rounded-circle" src="image/miru-icon.png" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">GoodJobカードを見る</h4>
            <p class="card-text">
              今月のGooDJobカードの一覧が見れます。今月は<%=topBean.getMonth()%>月分が対象になります.
            </p>
            <a href="show" class="btn btn-primary btn-block">カードを見る</a>
          </div>
        </div>
        </div>
        <div class="col-sm-4">
        <div class="card w-100">
          <img class="card-img-top　figure-img img-fluid rounded-circle" src="image/history-icon.png" alt="Card image cap">
          <div class="card-body">
            <h4 class="card-title">GoodJobヒストリー</h4>
            <p class="card-text">今までもらったGooDJObカードをメンバーごとに見ることができます。</p>
            <a href="#" class="btn btn-secondary btn-block disabled">coming soon</a>
          </div>
        </div>
        </div>
    </div><!--row-->
    </div><!--container-->
    <hr>
    <div class="container">
    <footer>
        <p>&copy; Takahiro Mori</p>
    </footer>
    </div><!--container-->
</body>
</html>