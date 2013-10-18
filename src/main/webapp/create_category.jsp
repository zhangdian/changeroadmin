<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jstl/fn"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<!-- Title and other stuffs -->
<title>分类</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<!-- Stylesheets -->
<link href="./css/bootstrap.css" rel="stylesheet">
<!-- Font awesome icon -->
<link rel="stylesheet" href="./css/font-awesome.css">
<!-- jQuery UI -->
<link rel="stylesheet" href="./css/jquery-ui.css">
<!-- Calendar -->
<link rel="stylesheet" href="./css/fullcalendar.css">
<!-- prettyPhoto -->
<link rel="stylesheet" href="./css/prettyPhoto.css">
<!-- Star rating -->
<link rel="stylesheet" href="./css/rateit.css">
<!-- Date picker -->
<link rel="stylesheet" href="./css/bootstrap-datetimepicker.min.css">
<!-- jQuery Gritter -->
<link rel="stylesheet" href="./css/jquery.gritter.css">
<!-- CLEditor -->
<link rel="stylesheet" href="./css/jquery.cleditor.css">
<!-- Bootstrap toggle -->
<link rel="stylesheet" href="./css/bootstrap-toggle-buttons.css">
<!-- Main stylesheet -->
<link href="./css/style.css" rel="stylesheet">
<!-- Widgets stylesheet -->
<link href="./css/widgets.css" rel="stylesheet">
<!-- Responsive style (from Bootstrap) -->
<link href="./css/bootstrap-responsive.css" rel="stylesheet">
<link rel="stylesheet" href="./css/themes/smoothness/jquery-ui.css" />

<!-- HTML5 Support for IE -->
<!--[if lt IE 9]>
  <script src="js/html5shim.js"></script>
  <![endif]-->

<!-- Favicon -->
<link rel="shortcut icon" href="./img/favicon.png">
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>

<body>

	<jsp:include page="./include/head.jsp"></jsp:include>

	<!-- Main content starts -->

	<div class="content">

		<!-- Sidebar -->
		<jsp:include page="./include/left_slidebar.jsp">
			<jsp:param value="sendcloud_how2use" name="selected_item" />
		</jsp:include>
		<!-- Sidebar ends -->

		<!-- Main bar -->
		<div class="mainbar">

			<!-- Page heading -->
			<div class="page-head">
				<!-- Page heading -->
				<h2 class="pull-left">
					创建类别
					<!-- page meta -->
					<span class="page-meta"></span>
				</h2>

				<!-- Breadcrumb -->
				<div class="bread-crumb pull-right">
					<a href="#"><i class="icon-home"></i> 主页</a>
					<!-- Divider -->
					<span class="divider">/</span> 
					<a href="#" class="bread-current"> 创建类别</a>
				</div>

				<div class="clearfix"></div>

			</div>
			<!-- Page heading ends -->

			<!-- Matter -->

			<div class="matter">
				<div class="container-fluid">

					<div class="row-fluid">

						<div class="span6">
							<div class="widget worange">
								<div class="widget-head">
									<div class="pull-left">选择父类别</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-down"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content">
									<div class="padd">
										<div class="row-fluid">
											<div class="span6" style="font-family:'Trebuchet MS', 'Helvetica', 'Arial',  'Verdana', 'sans-serif';">
												<ul id="menu">
													<li class="ui-state-disabled"><a href="#">Aberdeen</a></li>
													<li><a href="#">Ada</a></li>
													<li><a href="#">Adamsville</a></li>
													<li><a href="#">Addyston</a></li>
													<li><a href="#">Delphi</a>
														<ul>
															<li class="ui-state-disabled"><a href="#">Ada</a></li>
															<li><a href="#">Saarland</a></li>
															<li><a href="#">Salzburg</a></li>
															<li><a href="#">新建</a></li>
														</ul></li>
													<li><a href="#">Saarland</a></li>
													<li><a href="#">Salzburg</a>
														<ul>
															<li><a href="#">Delphi</a>
																<ul>
																	<li><a href="#">Ada</a></li>
																	<li><a href="#">Saarland</a></li>
																	<li><a href="#">Salzburg</a></li>
																	<li><a href="javascript:create_category(1, '111111111111');">新建</a></li>
																</ul></li>
															<li><a href="#">Delphi</a>
																<ul>
																	<li><a href="#">Ada</a></li>
																	<li><a href="#">Saarland</a></li>
																	<li><a href="#">Salzburg</a></li>
																</ul></li>
															<li><a href="#">Perch</a></li>
														</ul></li>
													<li class="ui-state-disabled"><a href="#">Amesville</a></li>
												</ul>

											</div>

										</div>

									</div>
								</div>
							</div>
						</div>
						
						<div class="span6">
							<div class="widget worange">
								<div class="widget-head">
									<div class="pull-left">输入新类别信息</div>
									<div class="widget-icons pull-right">
										<a href="#" class="wminimize"><i class="icon-chevron-down"></i></a>
									</div>
									<div class="clearfix"></div>
								</div>

								<div class="widget-content">
									<div class="padd">
										<div class="row-fluid">
											<div class="span12">
												
												<form id="create_category_form" class="form-horizontal">
													<div class="alert alert-error" style="display: none;" id="alert_msg"></div>
													<div class="control-group">
														<label class="control-label" for="category_name">父类别</label>
														<div class="controls">
															<input type="hidden" id="category_parent_id" name="category_parent_id" placeholder="尚未选择类别" style="width:300px;">
															<input type="text" id="category_parent" name="category_parent" readonly="readonly" style="width:300px;"> 
															<span class="help-inline"></span>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="category_name">类别名称</label>
														<div class="controls">
															<input type="text" id="category_name" name="category_name" placeholder="输入类别名称" style="width:300px;"> 
															<span class="help-inline"></span>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="category_desc">备注信息</label>
														<div class="controls">
															<textarea type="text" id="category_desc" name="category_desc" placeholder="输入备注信息" style="width:300px;"></textarea> 
															<span class="help-inline"></span>
														</div>
													</div>
													<!-- Remember me checkbox and sign in button -->
													<div class="control-group">
														<div class="controls">
															<button type="button" class="btn btn-danger" id="sc_create_tesk_submit" name="sc_create_tesk_submit">提交</button>
															<button type="reset" class="btn">重置</button>
														</div>
													</div>
												</form>

											</div>

										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<!-- Matter ends -->

		</div>

		<!-- Mainbar ends -->
		<div class="clearfix"></div>

	</div>
	<!-- Content ends -->


	<!-- Notification box starts -->

	<!-- Notification box ends -->

	<!-- Scroll to top -->
	<span class="totop" style="display: none;"><a
		href="#"><i
			class="icon-chevron-up"></i></a></span>

	<!-- JS -->
	<script src="./js/jquery.js"></script>
	<!-- jQuery -->
	<script src="./js/bootstrap.js"></script>
	<!-- Bootstrap -->
	<script src="./js/jquery-ui-1.10.2.custom.min.js"></script>
	<!-- jQuery UI -->
	<script src="./js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="./js/jquery.rateit.min.js"></script>
	<!-- RateIt - Star rating -->
	<script src="./js/jquery.prettyPhoto.js"></script>
	<!-- prettyPhoto -->

	<!-- jQuery Flot -->
	<script src="./js/excanvas.min.js"></script>
	<script src="./js/jquery.flot.js"></script>
	<script src="./js/jquery.flot.resize.js"></script>
	<script src="./js/jquery.flot.pie.js"></script>
	<script src="./js/jquery.flot.stack.js"></script>

	<script src="./js/jquery.gritter.min.js"></script>
	<!-- jQuery Gritter -->
	<script src="./js/sparklines.js"></script>
	<!-- Sparklines -->
	<script src="./js/jquery.cleditor.min.js"></script>
	<!-- CLEditor -->
	<script src="./js/bootstrap-datetimepicker.min.js"></script>
	<!-- Date picker -->
	<script src="./js/jquery.toggle.buttons.js"></script>
	<!-- Bootstrap Toggle -->
	<script src="./js/filter.js"></script>
	<!-- Filter for support page -->
	<script src="./js/custom.js"></script>
	<!-- Custom codes -->
	<script src="./js/charts.js"></script>
	<!-- Custom chart codes -->
	<script src="./js/jquery-1.9.1.js"></script>
	<script src="./js/jquery-ui-1.10.3.js"></script>

	<!-- Script for this page -->
	<script>
		/* 加载目录 */
		$(function() {
			$("#menu").menu();
		});
		
		/* 创建类别JS */
		function create_category (parent_category_id, parent_category_desc) {
			
			$("#create_category_form #category_parent").val(parent_category_desc);
			$("#create_category_form #category_parent_id").val(parent_category_id);
			
		}
		
	</script>

	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"></div>
</body>
</html>