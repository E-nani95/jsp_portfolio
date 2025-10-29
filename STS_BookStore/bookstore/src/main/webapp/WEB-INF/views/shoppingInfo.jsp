<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>��� ����</title>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">��� ����</h1>
        <p class="col-md-8 fs-4">Shipping Info</p>      
      </div>
    </div>
  	
	 <div class="row align-items-md-stretch ">	 	 

	
	<form action="#" method="post" >
		<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>">
			
			<div class="mb-3 row">
				<label class="col-sm-2">����</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control" >
				</div>
			</div>
			
			<div class="mb-3 row">
				<label class="col-sm-2">�����</label>
				<div class="col-sm-3">
					<input type="text" name="shippingDate" class="form-control" >
				</div>
			</div>		
			
				<div class="mb-3 row">
				<label class="col-sm-2">������</label>
				<div class="col-sm-3">
					<input type="text" name="country" class="form-control" >
				</div>
			</div>
				<div class="mb-3 row">
				<label class="col-sm-2">�����ȣ</label>
				<div class="col-sm-3">
					<input type="text" name="zipCode" class="form-control" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">�ּ�</label>
				<div class="col-sm-5">
					<input type="text" name="addressName" class="form-control" >
				</div>
			</div>
			
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="./cart?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> ���� </a> 
					<input type="submit" class="btn btn-primary" value="���" /> 
					<a href="./books" class="btn btn-secondary" role="button"> ��� </a>
				</div>
			</div>

		</form>
	</div>
<jsp:include page="footer.jsp" />
</div>	
</body>
</html>
