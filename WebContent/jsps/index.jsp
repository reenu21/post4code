<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
function m1(btn,cls){
	//alert(btn.value+" "+cls);
	cls='S'+cls;
	
	//alert(btn.value==="View");
	if(btn.value==="View Answers"){
		
		document.getElementById(cls).value="Hide Answers";
	}
	else{
		document.getElementById(cls).value="View Answers";
	}
}
</script>
</head>
<body class="fix-header">
	<c:import url="header.jsp" />
	<c:import url="sidebar.jsp" />
	
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row bg-title">
				
				
					<h1 > <font color="blue" ><center><c:out value="${param.msg }"/></center></font></h1>
		
				
					
				
				<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					<!--  <a href="https://wrappixel.com/templates/ampleadmin/" target="_blank" class="btn btn-danger pull-right m-l-20 hidden-xs hidden-sm waves-effect waves-light">
                        Upgrade to Pro</a>
                        <ol class="breadcrumb">
                           
                            <li class="active">Blank Page</li>
                        </ol>-->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<br> <br>

			<div class="row">
				<!-- .col -->
				<div class="col-md-12 col-lg-8 col-sm-12">
					<div class="white-box">
						<h3 class="box-title">Recent Questions</h3>


						<div class="comment-center p-t-10">
							<c:forEach var="q" items="${ques_list}">
								<div class="comment-body">

									<div class="mail-contnet">
										<h3>
											<c:out value="${q.getQues() }" />
										</h3>
										
										<span class="mail-desc"> Asked by:<c:out
												value="${q.getUsername() }" />
										</span> <span class="time">Posted on <c:out
												value="${q.getQues_date() }" /></span> <a
											href="${pageContext.request.contextPath }/postAnswer?id=<c:out value="${q.getQid()}"/>&q=<c:out value="${q.getQues() }"/>"
											class="btn-rounded btn btn-default btn-outline"><i
											class="ti-close text-danger m-r-5"></i> Post Answer</a>
										<c:set var="id1" value="S" />
										<c:set var="id2" value="${q.getQid()}" />
										<c:set var="id3" value="${id1}${id2 }" />
										<input type="button" data-toggle="collapse" data-target="#<c:out value="${q.getQid()}"/>"
											id="<c:out value="${id1}${id2 }"/>"
											onclick="m1(this,<c:out value="${q.getQid()}"/>)"
											value="View Answers"
											class="btn-rounded btn btn-default btn-outline" />

										<div id="<c:out value="${q.getQid()}"/>" class="collapse">
											<hr>
											<c:forEach var="ans" items="${ans_list }">
												<c:if test="${ans.getQid()==q.getQid() }">
													<span class="mail-contnet">
														<h3>
															<c:out value="${ans.getAns()}" />
														</h3>
													</span>
													<span class="mail-desc"> Answered by:<c:out value="${ans.getUsername() }" />
													</span>
													<hr>
												</c:if>

											</c:forEach>

										</div>
									</div>
								</div>

							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-sm-12"></div>
				<!-- /.col -->
			</div>
		</div>
		<!-- /.container-fluid -->
		<c:import url="footer.jsp"/>
	</div>


</body>
</html>