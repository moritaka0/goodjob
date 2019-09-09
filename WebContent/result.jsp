<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
   <div class="row">
       <div class="col-sm-12 justify-content-center">
       <br>
       <h4 class="font-weight-bold text-center">
          GJ賞は<span class="text-primary text-center" style="font-size:30px;">${resultList[0].name}</span>さんです!!
       </h4>
       </div>
   </div>
   <div class="row justify-content-center">
   <div class="col-sm-6">
         <figure class="figure">
             <img src="image/suumoformvp.jpg" class="figure-img img-fluid rounded-circle"></img>
         </figure>
   </div>
   </div>
   <div class="row">
     <div class="col-sm-12 justify-content-center">
       <h3 class="font-weight-bold text-center">
          おめでとうございます!!
       </h3>
       </div>
   </div>

   <div class="row justify-content-center">
       <div class="col-sm-8">
       <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">名前</th>
                <th scope="col">GJ枚数</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="result" items="${resultList}">
            <tr>
                <td style="font-size:18px;">${result.name}さん</td>
                <td style="font-size:18px;">${result.count}枚</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
       </div>
   </div>

   <div class="row">
       <div class="col-sm-6">
       <a href="top">TOPに戻る</a>
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
</div>

</body>
</html>