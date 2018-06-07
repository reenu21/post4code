<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <div class="navbar-default  sidebar" role="navigation">
            <div class="sidebar-nav ">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
                </div>
                <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="${pageContext.request.contextPath }/home" class="waves-effect">Home</a>
                    </li>
                    <!--  <br><p>Iterate all category here</p><br>-->
                    <c:forEach var="cat" items="${cat_list }">
                    	<li>
	                        <a href="${pageContext.request.contextPath }/showQuestions?id=<c:out value="${cat.getCid() }"/>" class="waves-effect">
	                        <c:out value="${cat.getCname() }"/> 
	                        </a>
                    	</li>
                    </c:forEach>
					<li>
					<a href="${pageContext.request.contextPath }/feedback">Feedback</a>
					</li>
					
                </ul>
                
            </div>
            
        </div>
