<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
 String myctx=request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko6">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>SNS (Admin Page)</title>

<!-- Custom fonts for this template-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="./css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body id="page-top">

	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="adminMain.do">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">관리자 페이지</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">사용자 관리</div>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed"
				href="userList.do"> <i class="fas fa-fw fa-wrench"></i> <span>사용자
						조회</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">게시판 관리</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link" href="main.do"> <i
					class="fas fa-fw fa-folder"></i> <span>메인 페이지</span>
			</a></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="adminBoard.do">
					<i class="fas fa-fw fa-chart-area"></i> <span>게시판</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="movie.do"> <i
					class="fas fa-fw fa-table"></i> <span>영화</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

				<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="<%=myctx%>/logout"> <i
					class="fas fa-fw fa-table"></i> <span>로그아웃</span></a></li>

		</ul>

		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<!-- Page Heading -->
					<br>
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1">이용자
												수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${totalCount}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">수입</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Board Card Example -->
						<div class="col-xl-3 col-md-6 mb-4">
							<div class="card border-left-info shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div
												class="text-xs font-weight-bold text-success text-uppercase mb-1">게시물
												수</div>
											<div class="h5 mb-0 font-weight-bold text-gray-800">${totalCount2}</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-auto">
							<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	