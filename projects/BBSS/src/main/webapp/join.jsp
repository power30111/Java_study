<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<!-- CSS only -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <title>게시판 JSP</title>

</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">JSP 게시판 웹 사이트</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
      data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
      aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <div class="navbar-nav">
          <a class="nav-link active" aria-current="page" href="main.jsp">메인</a>
          <a class="nav-link" href="bbs.jsp">게시판</a>

        </div>
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
          data-bs-toggle="dropdown" aria-expanded="false">접속하기</button>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
          </ul>
        </div>
      </div>      
    </div>
  </nav>
    <div class="container">
      <div class="col-lg-4"></div>
        <div class="jumbotron" style="padding-top:20px;">
          
          <form method="post" action="joinAction.jsp">
            <h3 style="text-align: center;">회원가입 화면</h3>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
            </div>
            <div class="form-group">
              <input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
            </div>
            <div class="form-group" style="text-align: center;">
            	<div class="btn-group" data-toggle="buttons">
            		<label	class= "btn btn-primary active">
            			<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
            		</label>
            		<label	class= "btn btn-primary">
            			<input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
            		</label> 
            	</div>
            </div>
            <div class="form-group">
              <input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
            </div>
            <input type="submit" class="btn btn-primary form-control" value="회원가입">
          </form>
        </div>
        <div class="col-lg-4"></div>
      </div>
      
</body>

</html>