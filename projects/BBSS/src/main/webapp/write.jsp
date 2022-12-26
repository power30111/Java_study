<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
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
	
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
	%>
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
          <a class="nav-link" href="main.jsp">메인</a>
          <a class="nav-link active" href="bbs.jsp">게시판</a>

        </div>
        <%
        	if(userID ==null){
        	
        %>
        
        <div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
          data-bs-toggle="dropdown" aria-expanded="false">접속하기</button>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
            <li><a class="dropdown-item" href="login.jsp">로그인</a></li>
          </ul>
        </div>
       	<%
        	} else{
        		
       	%>
       	<div class="dropdown">
          <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
          data-bs-toggle="dropdown" aria-expanded="false">회원관리</button>
          <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="logoutAction.jsp">로그아웃</a></li>
          </ul>
        </div>
        <%
        	}
        %>
      </div>      
    </div>
  </nav>
	<div class="container">
		<div class="row">
		<form method="post" action="writeAction.jsp">
			<table class = "table table-striped" style="text-align : center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align:center;">게시판 글쓰기 양식</th>
			
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" rows="20px"></textarea></td>
					</tr>
				</tbody>
				
			</table>
			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
		</form>
		</div>
		
	</div>

       

</body>

</html>