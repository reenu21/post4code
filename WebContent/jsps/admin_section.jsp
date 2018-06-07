<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sv" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="header.jsp"/>
	<c:import url="sidebar.jsp"/>
	        <div id="page-wrapper">
            <div class="container-fluid">
            
                <br><br>
                
                <div class="row">
                    <!-- .col -->
                    <div class="col-md-12 col-lg-8 col-sm-12">
                        <div class="white-box">
                           <!--   <h3 class="box-title">Recent Questions</h3>-->
                            
                            <div class="comment-center p-t-10">
                           
                         		 <!--   <div class="mail-contnet">-->
                                      <div style="margin-left:10px; margin-right:10px;">
                                      	 <ul class="nav nav-tabs">
						                  <li class="active"><a data-toggle="tab" href="#add-cat">Add Category</a></li>
						                  <li><a data-toggle="tab" href="#user_info">Users Informations</a></li>
						                  <li><a data-toggle="tab" href="#fback">Feedback</a></li>
						                </ul>

						                <div class="tab-content">
						                  <div id="add-cat" class="tab-pane fade in active">
						                    <p id="description">
						                    	<form action="${pageContext.request.contextPath}/add-category" method="post">
												  <div class="form-group">
												    <label >Category Name</label>
												    <input type="text"  name="cname" class="form-control" >
												  </div>
												  <input type="submit" class="btn btn-primary"  value="Add">
												</form>
											</p>
						                  </div>
						                    <div id="user_info" class="tab-pane fade ">
						                        <table class="table table-hover">
												    <thead>
												      <tr>
												        <th>Username</th>
												        <th>Total Questions asked</th>
												        <th>Total Answered</th>
												      </tr>
												    </thead>
												    <tbody>
												    
												      <c:forEach var="u" items="${users_list}">
												      	 <tr>
												        	<td>
												        		<c:out value="${u.getUsername()}"/> 
												        	</td>
												         	<td>
												         		<c:set var="count" value="0"/>
												         		<c:forEach var="q" items="${ques_list}">
														         	<c:if test="${q.getUsername()==u.getUsername()}">
														         	
														         		<c:set var="count" value="${count+1 }"/>
														         		
														         	</c:if>
												         		</c:forEach>
												         		<c:out value="${count }"/>
												         	</td>
												        	<td>
												        		<c:set var="ans_count" value="0"/>
												        		<c:forEach var="a" items="${ans_list}">
												        			<c:if test="${a.getUsername()==u.getUsername() }">
												        				
												        				<c:set var="ans_count" value="${ans_count+1 }" />
												        			</c:if>
												        		</c:forEach>
												        		<c:out value="${ans_count }"/>
												        	</td>
												        
												      	</tr>
												      </c:forEach>
												    </tbody>
												  </table>
						                  </div>
						                  <div id="fback" class="tab-pane fade">
						                       <table class="table table-hover">
												    <thead>
												      <tr>
												        <th>Username</th>
												        <th>Date</th>
												        <th>Feedback</th>
												      </tr>
												    </thead>
												    <tbody>
												      <tr>
												        <td>John</td>
												         <td>18/03/18</td>
												        <td><a>View</a></td>
												      </tr>
												      <tr>
												        <td>Mary</td>
												         <td>18/03/18</td>
												        <td><a>View</a></td>
												      </tr>
												      <tr>
												        <td>July</td>
												         <td>18/03/18</td>
												        <td><a>View</a></td>
												      </tr>
												    </tbody>
												  </table>
						                      
						                
						                  </div>
						                </div>
                    
										
										</div>	
											<!--   </div>-->
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