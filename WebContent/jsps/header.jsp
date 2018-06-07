<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>Ample Admin Template - The Ultimate Multipurpose admin template</title>
    <!-- Bootstrap Core CSS -->
    <link href="resources/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="resources/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
   
    <!-- morris CSS -->
    <link href="resources/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="resources/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="resources/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="resources/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="resources/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="resources/css/colors/default.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
   <!-- <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
        </svg>
    </div> --> 
   
    <div id="wrapper"> 
      <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header">
                <div class="top-left-part">
                    <!-- Logo -->
                    <a class="logo" href="index.html">
                        <!-- Logo icon image, you can use font-icon also --><b>
                        <!--This is dark logo icon--><img src="resources/images/admin-logo-dark.png" alt="home" class="dark-logo" /><!--This is light logo icon--><img src="resources/images/admin-logo-dark.png" alt="home" class="light-logo" />
                     </b>
                        <!-- Logo text image you can use text also --><span class="hidden-xs">
                        <!--This is dark logo text--><img src="resources/images/admin-text.png" alt="home" class="dark-logo" /><!--This is light logo text--><img src="resources/images/admin-text-dark.png" alt="home" class="light-logo" />
                     </span> </a>
                </div>
                <!-- /Logo -->
                <!-- Search input and Toggle icon -->
                <ul class="nav navbar-top-links navbar-left">
                    <li><a href="javascript:void(0)" class="open-close waves-effect waves-light">
                        <i ><img src="resources/images/abc2.png" height="30" width="30" style="margin-top:15px">
                        </i>
                        </a>
                    </li>
                   
                </ul>
                <c:choose>
               <c:when test="${pageContext.request.userPrincipal.name==null}">
               		<a class="profile-pic pull-right"  href="${pageContext.request.contextPath}/login"> 
	                       <span style="color:white;">Login</span> 
	                 </a>
                    <a class="profile-pic pull-right"  href="${pageContext.request.contextPath}/postQuestion"> 
	                       <span style="color:white;">Post Question</span> 
	                 </a>
               
               </c:when>
                
              <c:otherwise>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> 
	                       <!--  <img src="resources/images/users/varun.jpg" alt="user-img" width="36" class="img-circle">-->
	                        <b class="hidden-xs">Welcome <c:out value="${pageContext.request.userPrincipal.name }"/> </b>
	                        <span class="caret"></span> 
                        </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li>
                                <div class="dw-user-box">
                                    <!--  <div class="u-img"><img src="resources/images/users/varun.jpg" alt="user" /></div>-->
                                    <div class="u-text">

                                        <!--  <p class="text-muted">varun@gmail.com</p><a href="profile.html" class="btn btn-rounded btn-danger btn-sm">View Profile</a>-->
                                        </div>
                                </div>
                            </li>
                            
                            <li><a href="${pageContext.request.contextPath}/myQuestions"> My Questions</a></li>
                            <li><a href="${pageContext.request.contextPath}/myAnswers"> My Answer</a></li>
                             <li><a href="${pageContext.request.contextPath}/postQuestion">Post Question</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"><i class="ti-settings"></i> Account Setting</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath }/logout"><i class="fa fa-power-off"></i> Logout</a></li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
               </c:otherwise>
               </c:choose>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
       
            
        
    </div>
    
   <script src="resources/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="resources/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="resources/js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="resources/js/waves.js"></script>
    <!--Counter js -->
    <script src="resources/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="resources/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="resources/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="resources/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="resources/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="resources/js/custom.min.js"></script>
    <script src="resources/js/dashboard1.js"></script>
    <script src="resources/bower_components/toast-master/js/jquery.toast.js"></script>
</body>
</html>