<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Login</title>
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp"%>

		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="container-fluid py-5">
				<h1 class="display-5 fw-bold">�α���</h1>
				<p class="col-md-8 fs-4">Login</p>
			</div>
		</div>

		<div class="row align-items-md-stretch   text-center">
			<div class="row justify-content-center align-items-center ">
				<div class="h-100 p-5 col-md-6">
					<h3>Please sign in</h3>
					<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("���̵�� ��й�ȣ�� Ȯ���� �ּ���");
					out.println("</div>");
				}
			%>
					<form class="form-signin" action="login_process" method="post">

						<div class="form-floating  mb-3 row">
							<input type="text" class="form-control" name='u_id'
								required autofocus> <label for="floatingInput">ID</label>
						</div>
						<div class="form-floating  mb-3 row">
							<input type="password" class="form-control" name='u_pw'>
							<label for="floatingInput">Password</label>
						</div>

						<button class="btn btn-lg btn-success" type="submit">�α���</button>

					</form>
				</div>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>