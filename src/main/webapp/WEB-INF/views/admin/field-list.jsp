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
		<title>题库管理</title>
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
							<a href="admin/question-list"><i class="fa fa-edit"></i>试题管理</a>
						</li>
						<li>
							<a href="admin/exampaper-list"><i class="fa fa-file-text-o"></i>试卷管理</a>
						</li>
						<li>
							<a href="admin/field-list-1"><i class="fa fa-cloud"></i>题库管理</a>
						</li>
						</ul>

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
								<a href="admin/field-list-1"> <i class="fa fa-book"></i> 题库列表 </a>
							</li>
							
							<li>
								<a href="admin/add-field"> <i class="fa fa-qrcode"></i> 添加题库 </a>
							</li>
							
							<li>
								<a href="admin/point-list-0-1"> <i class="fa fa-sitemap"></i> 知识点列表 </a>
							</li>
							
							<li>
								<a href="admin/add-point"> <i class="fa fa-pencil"></i> 添加知识点 </a>
							</li>
							
							<li>
								<a href="teacher/tag-list-1"> <i class="fa fa-tag"></i> 标签列表 </a>
							</li>
								
							<li>
								<a href="teacher/add-tag"> <i class="fa fa-plus"></i> 添加标签 </a>
							</li>
						</ul>

					</div>
					<div class="col-xs-9">
						<div class="page-header">
							<h1><i class="fa fa-bar-chart-o"></i> 题库管理 </h1>
						</div>
						<div class="page-content row">

							
							<div id="field-list">
								<table class="table-striped table">
									<thead>
										<tr>
											<td></td>
											<td>ID</td>
											<td>题库名</td>
											<td>描述</td>
											<td>操作</td>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${fieldList }" var="item">
											<tr>
												<td>
													<c:if test="${item.removeable }">
														<input type="checkbox" value="${item.fieldId }">
													</c:if>
													
												</td>
												<td>${item.fieldId }</td>
												<td>${item.fieldName }</td>
												<td>${item.memo }</td>
												<td>
													<c:if test="${item.removeable }">
														<button class="delete-btn" data-id="${item.fieldId }">删除</button>
													</c:if>
												</td>
											</tr>
										</c:forEach>
										
									</tbody><tfoot></tfoot>
								</table>
							</div>
							<div id="page-link-content">
								<ul class="pagination pagination-sm">${pageStr}</ul>
							</div>

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
		<!-- Bootstrap JS -->
		<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/js/all.js"></script>
		<script type="text/javascript" src="resources/js/field-list.js"></script>
	</body>
</html>