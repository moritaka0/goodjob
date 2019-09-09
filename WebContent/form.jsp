<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>good job form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!--サーブレット側で直接listを渡しているのでBeanのインスタンスを生成する必要はない-->
<div class="container">
    <div class="row">
    <div class="col-sm-12  text-primary"><!--CSSのグリッドシステム12分割のものを6-6に再分割-->
        <header style="vertical-align:middle;">
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
    <form action="confirm" method="post">
    <div class="row">
        <div class="col-sm-8 col-offset-2">
            <p>
                フォームを入力してください
            </p>

            <div class="form-group">
                <label for="from">自分の名前を選ぶ</label>
                <select id="from" name="from" class="form-control" required>
                    <option value="" selected>選択してください</option>
                    <c:forEach var="member" items="${memberList}">
						<option value="${member.id}">${member.name}</option>
					</c:forEach>
                </select>
            </div><!--form-grpoup プルダウン-->

            <div class="form-group">
              <label for="to">相手の名前を選ぶ</label>
              <select id="to" name="to" class="form-control" required>
                  <option value="" selected>選択してください</option>
                  <c:forEach var="member" items="${memberList}">
					<option value="${member.id}">${member.name}</option>
				  </c:forEach>
              </select>
          </div><!--form-grpoup プルダウン-->
        </div>
    </div>

    <div class="row">
    <div class="col-sm-8 col-offset-2">
    <div class="form-group">
    <label for="carousel-1">カードを選ぶ</label>
    <div id="carousel-1" class="carousel" data-ride="carousel" data-interval="0" data-touch="false">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100 border border-primary" src="image/card1.png" id="1">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100 border border-primary" src="image/card2.png" id="2">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100 border border-primary" src="image/card3.png" id="3">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100 border border-primary" src="image/card4.png" id="4">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100 border border-primary" src="image/card5.png" id="5">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carousel-1" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true" ></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carousel-1" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    </div>
    </div>
    </div>

    <div class="row">
        <div class="col-sm-8 col-offset-2">
          <div class="form-group">
                <label for="message">メッセージを入力してください <span class="badge badge-danger">※100文字以内</span></label>
                <textarea name="message" id="message" rows="10" class="form-control" maxlength="100" placeholder="メッセージを書いてください" required></textarea>
            </div><!--form-grpoup テキストエリア-->
            <input type="hidden" name="cardType" id="cardType" value="image/card1.png" />
            <button type="submit" class="btn btn-primary btn-lg">カードを作成する</button>
            <a href="top" class="btn btn-secondary btn-lg">TOPに戻る</a>
        </div><!--col-sm-8-->
    </div>
    </form>

    <footer>
        <p>&copy; Takahiro Mori</p>
    </footer>
</div><!--container-->

<script>
	var cardid = 1;
	$('.carousel-control-next').click(function(){
	if(cardid < 5){
	    cardid = cardid + 1;
	}else{
	    cardid = 1;
	}
	var cardType = $('#' + cardid).attr('src');
	document.getElementById("cardType").value = cardType;
	})

	$('.carousel-control-prev').click(function(){
	if(cardid > 1){
	    cardid = cardid -1;
	}else{
	    cardid = 5;
	}
	var cardType = $('#' + cardid).attr('src');
	document.getElementById("cardType").value = cardType
	})
</script>

</body>
</html>