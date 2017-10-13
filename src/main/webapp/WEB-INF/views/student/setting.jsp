<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%-- <%@taglib uri="spring.tld" prefix="spring"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    	<base href="<%=basePath%>">
    
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>试题管理</title>
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="keywords" content="">
		<link rel="shortcut icon" href="<%=basePath%>resources/images/favicon.ico" />
		<link href="resources/bootstrap/css/bootstrap-huan.css" rel="stylesheet">
		<link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="resources/css/style.css" rel="stylesheet">
		
		<link href="resources/css/exam.css" rel="stylesheet">
		<link href="resources/chart/morris.css" rel="stylesheet">
	</head>
	<body>
		<header>
	
		</header>
		<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
			<div class="container">
				<nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
					<ul class="nav navbar-nav">
						<li>
							<a href="start-exam"><i class="fa fa-edit"></i>试题练习</a>
						</li>
						<li>
							<a href="student/usercenter"><i class="fa fa-dashboard"></i>用户中心</a>
						</li>
						<li class="active">
							<a href="student/setting"><i class="fa fa-cogs"></i>个人设置</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>

		<!-- Navigation bar ends -->

		<!-- Slider starts -->

		<div>
			<!-- Slider (Flex Slider) -->

			<div class="container" style="min-height:500px;">

				<div class="row">
					<div class="col-xs-3">
						<ul class="nav default-sidenav">
							<li class="active">
								<a> <i class="fa fa-cogs"></i> 基本资料 </a>
							</li>
							<li>
								<a href="student/change-password"> <i class="fa fa-wrench"></i> 修改密码 </a>
							</li>

						</ul>

					</div>
					<div class="col-xs-9">
						<div class="page-header">
							<h1><i class="fa fa-cogs"></i> 基本资料</h1>
						</div>
						<div class="page-content row">
							<form class="form-horizontal" id="form-change-password" action="setting" style="margin-top:40px;" method="post">
									
									<!-- password -->
									<div class="form-group form-username">
										<label class="control-label col-md-2" for="username">账号</label>
										<div class="col-md-5">
											<input type="text" class="form-control" id="username" disabled="disabled" value="${user.username }">
											<span class="form-message"></span>
										</div>
									</div>
									
									<!-- form-job-type -->
									<div class="form-group form-job-type">
										<label class="control-label col-md-2" for="password">专业</label>
										<div class="col-md-5">
											<select class="form-control" id="job-type-input">
												<option value="-1">--请选择--</option>
												<c:if test="${user.fieldId eq 2 }">
													<option value="2" selected="selected">窗口服务</option>
													<option value="3">业报扩装</option>
													<option value="4">电能计量</option>
												</c:if>
												<c:if test="${user.fieldId eq 3 }">
													<option value="2">窗口服务</option>
													<option value="3" selected="selected">业报扩装</option>
													<option value="4">电能计量</option>
												</c:if>
												<c:if test="${user.fieldId eq 4 }">
													<option value="2">窗口服务</option>
													<option value="3">业报扩装</option>
													<option value="4" selected="selected">电能计量</option>
												</c:if>
											</select>
											<span class="form-message"></span>
										</div>
									</div>
									
									<!-- password-confirm -->
									<div class="form-group form-password-confirm">
										<label class="control-label col-md-2" for="password">手机</label>
										<div class="col-md-5">
											<input type="text" class="form-control" id="phone" value="${user.phone }">
											<span class="form-message"></span>
										</div>
									</div>
									
									<div class="form-group form-email">
										<label class="control-label col-md-2" for="email">email</label>
										<div class="col-md-5">
											<input type="text" class="form-control" id="email" value="${user.email }">
											<span class="form-message"></span>
										</div>
									</div>

									<!-- Buttons -->
									<div class="form-group">
										<!-- Buttons -->
										<div class="col-md-5 col-md-offset-2">
											<button type="submit" class="btn" id="btn-reg">
												确认修改
											</button>
										
										</div>
									</div>
								</form>
							
							
							

						</div>
					</div>
				</div>
			</div>
		</div>

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="copy">
						</div>
					</div>
				</div>

			</div>

		</footer>

		<!-- Slider Ends -->

		<!-- Javascript files -->
		<!-- jQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.9.0.min.js"></script>
		<script type="text/javascript" src="resources/js/all.js"></script>
		<!-- Bootstrap JS -->
		<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/chart/raphael-min.js"></script>
		<script type="text/javascript" src="resources/chart/morris.js"></script>
		<script type="text/javascript" src="resources/js/modify-user.js"></script>
	</body>
</html>