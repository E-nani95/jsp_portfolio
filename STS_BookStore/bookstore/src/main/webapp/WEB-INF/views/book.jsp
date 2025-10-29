<%@page import="com.mycompany.myapp.DTO.BooksDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도서 정보</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"/>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script type="text/javascript">
	function addToCart(){
		if(confirm("도서를 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		}else{
			document.addForm.reset();
		}
	}
</script>

</head>
<body>
<div class="container py-4">
	<%@ include file="menu.jsp" %>
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-5 fw-bold">도서정보</h1>
			<p class="col-md-8 fs-4">BookInfo</p>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
	%>
	<div class="row align-items-md-stretch">
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("등록에 실패했습니다.");
					out.println("</div>");
				}
			%>
			<div class="col-md-5">
			<img src="<c:url value='${book.b_img}' />" style="width: 70%"/>
			</div>	 	
			<div class="col-md-6">
				<h3><b>${book.b_name}</b></h3>
				<p>${book.b_exp}
				<p><b>도서코드 : </b><span class="badge text-bg-danger"> <%=id%></span>							
				<p><b>저자</b> : ${book.b_author}					
				<p><b>분류</b> : ${book.d_name}
				<p><b>재고수</b> : ${book.b_count}
				<h4>${book.b_price}원</h4>
				<p><form name="addForm" action="addCart?id=<%=id%>" method="POST">
				<p><a href="addCart?id=<%=id%>" class="btn btn-info"> 도서주문 &raquo;</a> 
				<!--  
					<a href="cart" class="btn btn-warning">장바구니 &raquo;</a>
				-->
					<a href="books" class="btn btn-secondary"> 도서목록 &raquo;</a>
				</form>
			</div>
		</div>
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>