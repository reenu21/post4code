<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:import url="header.jsp"/>
	<c:import url="sidebar.jsp"/>
	        <div id="page-wrapper">
            <div class="container-fluid">
             
                <br><br>
                
                <div class="row">
                    <!-- .col -->
                    <div class="col-md-12 col-lg-8 col-sm-12">
                        <div class="white-box">
                            
                            
                            <div class="comment-center p-t-10">
                            <!-- My Questions -->
                           		<c:if test="${t=='Questions'}">
                           		<h3 class="box-title" style="margin-left:30px;">My <c:out value="${t}"/> </h3>
                           			 <c:forEach  var="q" items="${ques_list}"> 
                           			 <c:if test="${name==q.getUsername()}">
                            	<div class="comment-body">
                                    
                                    <div class="mail-contnet">
                                        <h3><c:out value="${q.getQues() }"/></h3>
										
										<span class="mail-desc">
										Asked by:You
										</span> 
										<span class="time">Posted on <c:out value="${q.getQues_date() }"/></span>
										<a href="${pageContext.request.contextPath }/postAnswer?id=<c:out value="${q.getQid()}"/>&q=<c:out value="${q.getQues() }"/>" class="btn-rounded btn btn-default btn-outline"><i class="ti-close text-danger m-r-5"></i> Post Answer</a>
											<c:set var="id1" value="S"/>
											<c:set var="id2" value="${q.getQid()}"/>
											<c:set var="id3" value="${id1}${id2 }"/>
										<input type="button" data-toggle="collapse" data-target="#<c:out value="${q.getQid()}"/>" id="<c:out value="${id1}${id2 }"/>" onclick="m1(this,<c:out value="${q.getQid()}"/>)" value="View Answers" class="btn-rounded btn btn-default btn-outline"/>
											  
											<div id="<c:out value="${q.getQid()}"/>" class="collapse">
											<hr>
											<c:forEach var="ans" items="${ans_list }">
											<c:if test="${ans.getQid()==q.getQid() }">
											<span class="mail-contnet">
												<h3><c:out value="${ans.getAns()}"/></h3>
												</span> 
										    <span class="mail-desc">
												Answered by:<c:out value="${ans.getUsername() }"/>
											</span>
											<hr>
											</c:if>
												
											</c:forEach>
											
											</div>
                                    </div>
                                </div>
                            	</c:if>
                             </c:forEach>  
                           		</c:if>
                           		<!-- My Answers -->
                           		<c:if test="${t=='Answers'}">
                           		<h3 class="box-title" style="margin-left:30px;">My <c:out value="${t}"/> </h3>
                           				<table class="table table-hover">
												    <thead>
												      <tr>
												        <th>Questions</th>
												        <th>Your answers</th>
												        
												      </tr>
												    </thead>
												    <tbody>
												    <c:forEach var="a" items="${ans_list}">
												  		<c:if test="${a.getUsername()==name }">
												  		
												    <tr>
												    	<td>
												    	<c:forEach var="ques" items="${ques_list}">
												    		<c:if test="${ques.getQid()==a.getQid() }">
												    			<c:out value="${ques.getQues()}"/>
												    		</c:if>
												    	</c:forEach>
												    	</td>
												    	<td>
												    		<!--<c:out value="${a.getAns()}"/> -->
												    		<button type="button" class="btn btn-info " data-toggle="modal" data-target="#<c:out value="${a.getAid()}"/>">View Answer</button>
												        <!-- Modal -->
															<div id="<c:out value="${a.getAid()}"/>" class="modal fade" role="dialog">
															  <div class="modal-dialog">
															  <!-- Modal content-->
															    <div class="modal-content">
															      
															      <div class="modal-body">
															        <p><c:out value="${a.getAns()}"/> </p>
															      </div>
															      <div class="modal-footer">
															        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
															      </div>
															    </div>
															
															  </div>
															</div>
												    	</td>
												    </tr>
												   		</c:if>
												    </c:forEach>   
												    </tbody>
												  </table>

                           			 <c:forEach  var="q" items="${ques_list}"> 
                           			 <c:if test="${name==q.getUsername()}">
                            	
                            	</c:if>
                             </c:forEach>  
                           		</c:if>
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