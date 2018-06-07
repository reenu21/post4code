<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="fix-header">
	<c:import url="header.jsp"/>
	<c:import url="sidebar.jsp"/>
	        <div id="page-wrapper">
            <div class="container-fluid">
             
                <br><br>
                
                <div class="row">
                    <!-- .col -->
                    <div class="col-md-12 col-lg-8 col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">Recent Questions</h3>
                            
                            <div class="comment-center p-t-10">
                           		
                           			<div style="margin-left:10px; margin-right:10px;">
                                       <h3><c:out value="${ques}"/> </h3>
                                        <form action="${pageContext.request.contextPath }/submitQuestion" method="post">
                                       	<div class="form-group">
                                        <select class="form-control" name="cid">
                                        	<c:forEach var="l" items="${cat_list }">
                                        	<option value="<c:out value="${l.getCid() }"/>"> <c:out value="${l.getCname() }"/></option>
                                        	</c:forEach>
                                        </select>
                                        </div>
										  <div class="form-group">
										    Your Question:
										   <textarea class="form-control" rows="5" name="ques"></textarea>
										  </div>
										    
										  <input type="submit" class="btn btn-primary" value="Post Question"/>
										</form>
										
										</div>	
                           		
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        
                    </div>
                    <!-- /.col -->
                </div>
            </div>
            <!-- /.container-fluid -->
            <c:import url="footer.jsp"/>
        </div>
        
        
</body>
</html>