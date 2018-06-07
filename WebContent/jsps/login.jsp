<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="fix-header">
	<c:import url="header.jsp" />
	<c:import url="sidebar.jsp" />
	<div id="page-wrapper">
		<div class="container-fluid">
			
			<br>
			<br>

			<div class="row">
				<!-- .col -->
				<div class="col-md-12 col-lg-6 col-sm-12">
					<div class="white-box">
						
						<div class="comment-center p-t-10">

							<div style="margin-left: 20px; margin-right: 20px;">
								
								<form class="form-horizontal" action='${pageContext.request.contextPath }/login' method="POST">
									<fieldset>
										<div >
											
											<h2>Login</h2>
											
											<font color="blue"><c:out value="${successmsg }"/></font>
											<font color="blue"><c:out value="${msg }"/></font>
											<c:if test='${param.action != null }'>
												<font color="blue"><c:out value="You Have Logged Out Successfully"/></font>
											</c:if>
											
											<c:if test='${param.status  != null }'>
											<font color="red"><c:out value="Invalid Credentials"/></font>
												
											</c:if>
										</div>
										<br>
										<div class="form-group">
											<label>Enter Username</label> 
											<input class="form-control" name="username" type="text" />
										</div>
										<div class="form-group">
											<label>Enter Password</label> 
											<input class="form-control" name="password" type="password" />
										</div>
										<div class="form-group">
											<input type="submit" value="login" class="btn btn-primary btn-lg">
										</div>




									</fieldset>
								</form>

							</div>

						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12">
					<div class="white-box">
					<div class="comment-center p-t-10">

							<div style="margin-left: 20px; margin-right: 20px;">
								
								<form class="form-horizontal" action='${pageContext.request.contextPath }/sign-up' method="POST">
									<fieldset>
										<h2>Sign-up</h2>
										<c:if test="${failmsg!=null }">
										<h2 style="color:red;"><c:out value="${failmsg }"/></h2>
										</c:if>
										<div class="form-group">
											<label>Enter Name</label> 
											<input class="form-control" name="name" type="text" />
										</div>
										<div class="form-group">
											<label>Enter Username</label> 
											<input class="form-control" name="username" type="text" />
										</div>
										<div class="form-group">
											<label>Enter Password</label> 
											<input class="form-control" name="password" type="password" />
										</div>
										<div class="form-group">
											<label>Re-Enter Password</label> 
											<input class="form-control" name="re-password" type="password" />
										</div>
										
										<div class="form-group">
											<input type="submit" value="Sign-up" class="btn btn-success btn-lg">
										</div>
									</fieldset>
								</form>

							</div>

						</div>
					</div>
				</div>
				<!-- /.col -->
			</div>
		</div>
		<!-- /.container-fluid -->
		<c:import url="footer.jsp"/>
	</div>


</body>
</html>