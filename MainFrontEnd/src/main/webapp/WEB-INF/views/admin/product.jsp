<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <c:set var="context" value="${pageContext.request.contextPath}" />
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>All Products</title>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<jsp:include page="/WEB-INF/views/admin/adminheader.jsp"></jsp:include>
<div class="container-fluid" style="margin-top:15px;">
	<h3 class="text-success">User Table</h3>
	<div class="row">
	<div class="col-sm-12 table-responsive">
		<table class="table table-hover table-border">
			<tr>
				<th>#</th>
				<th>Product Brand</th>
				<th>Product Name</th>
				<th>Image</th>
				<th>Quantity</th>
				<th>Description</th>
				<th>Price</th>
				<th>Active</th>
				<th>Category Name</th>
				<th>Supplier Name</th>
				<th>Supplier Company Name</th>
				<th>Enable</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${product}" var = "a">
				<c:if test="${a.activeIs==true}">
				<tr class="success">
				<th>${a.prod_id}</th>
				<td class="text-primary">${a.prod_brand}</td>
				<td class="text-primary">${a.prod_name}</td>
				<td class="text-primary"><div class="media">
					<div class="thumbnail pull-left">
				<img class="media-object" src=<c:url value="${a.prodImg_url}" /> alt="no-image" style="width:350px;height:180px;" />
				</div></div></td>
				<td class="text-primary">${a.quantity}</td>
				<td class="text-primary">${a.prod_description}</td>
				<td class="text-primary">${a.price}</td>
				<td class="text-primary">${a.activeIs}</td>
				<td class="text-primary">${a.category.subcategory_name}</td>
				<td class="text-primary">${a.user.ufname}</td>
				<td class="text-primary">${a.user.s_comp_name}</td>
				<td class="text-info"><a href="${context}/updateproduct?pid=${a.prod_id}" class="btn btn-danger">Disable</a></td>
				<td class="text-info"><a href="${context}/updateproduct1?pid=${a.prod_id}" class="btn btn-primary">Update</a></td>
				</c:if>
				<c:if test="${a.activeIs == false}">
				<tr class="danger">
				<th>${a.prod_id}</th>
				<td class="text-primary">${a.prod_brand}</td>
				<td class="text-primary">${a.prod_name}</td>
				<td><div class="media">
					<div class="thumbnail pull-left">
				<img class="media-object" src=<c:url value="${a.prodImg_url}" /> alt="no-image" style="width:350px;height:180px;" />
				</div></div></td>
				<td class="text-primary">${a.quantity}</td>
				<td class="text-primary">${a.prod_description}</td>
				<td class="text-primary">${a.price}</td>
				<td class="text-primary">${a.activeIs}</td>
				<td class="text-primary">${a.category.subcategory_name}</td>
				<td class="text-primary">${a.user.ufname}</td>
				<td class="text-primary">${a.user.s_comp_name}</td>
				<td class="text-info"><a href="${context}/updateproduct?pid=${a.prod_id}" class="btn btn-success">Enable</a></td>
				<td class="text-info"><a href="${context}/updateproduct1?pid=${a.prod_id}" class="btn btn-primary">Update</a></td>
				</c:if>
				</tr>
		</c:forEach>
		</table>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>