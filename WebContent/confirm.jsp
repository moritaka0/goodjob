<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>good jib preview</title>

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

<div class="container">
    <div class="row">
        <div class="col-sm-6  text-primary">
         <header style="vertical-align:middle;">
         <h1>
            SS2 GOODJOB
            <img src="image/goodjob-header32px.png"></img>
        </h1>
        </header>
       </div><!--col-->
   </div><!--row-->
</div>
   <hr>
<div class="container">
   <div class="row">
    <div class="col-sm-8 col-offset-2">
    <h3>この内容で登録しますか</h3>
        <div class="form-group">
        <div class="card w-100" id="target">
                <img class="card-img" src="${cardType}">
                <div class="card-img-overlay text-center cd-text-font">
                    <h3 class="card-title">${fromMemberInfo.name} ▶ ︎${toMemberInfo.name}</h3>
                    <p class="card-text">
                        ${message}
                    </p>
                </div>
        </div><!--card-->
        </div>
    </div>
    </div>

	<div class="row">
    <div class="col-sm-8  col-offset-2">
    <form action="complete" method="post">
       <div class="form-group">
           <input type="hidden" name="fromPersonId" value="${fromMemberInfo.id}" />
           <input type="hidden" name="toPersonId" value="${toMemberInfo.id}" />
           <input type="hidden" name="cardType" value="${cardType}" />
           <input type="hidden" name="message" value="${message}" />
           <button type="submit" class="btn btn-primary btn-lg">確定する</button>
           <a href="form" class="btn btn-secondary btn-lg">書き直す</a>
       </div>
   </form>
   </div>
   </div>
</div>
    <hr>
<div class="container">
    <div class="row">
    <div class="col-sm-8 col-offset-2">
        <footer>
            <p>&copy; Takahiro Mori</p>
        </footer>
    </div><!--col-->
    </div><!--row-->
</div><!--continer-->
</body>
</html>