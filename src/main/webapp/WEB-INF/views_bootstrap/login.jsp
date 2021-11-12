
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head>
        <!-- <meta charset="utf-8" /> -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <title>Academic Management Login</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/bootstrap/assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/css_bootstrap/styles.css" rel="stylesheet" />
        <!-- 내가 만든 css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main.css">
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container px-5">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/login">Academic Management</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    </ul>
                </div>
            </div>
        </nav>
        
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-5">
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-6">
                        <div class="text-center my-5">
                            <h1 class="display-5 fw-bolder text-white mb-2">Academic Management Login</h1>
                            <p class="lead text-white-50 mb-4">학번과 비밀번호를 입력하세요.</p>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <!-- Features section-->
        <section class="py-5 border-bottom" id="features">
            <div class="container px-5 my-5">
                <div class="row gx-5">
						<form method="post" action="<c:url value="login"/>">
							<table id="login_table">
								<tr>
									<td></td>
									<td>
										<c:if test="${not empty errorMsg}">
											<div style="color:#ff0000"><h4> ${errorMsg} </h4></div>
										</c:if>
									
										<c:if test="${not empty logoutMsg}">
											<div style="color:#0000ff"><h4> ${logoutMsg} </h4></div>
										</c:if>
									</td>
								</tr>
								<tr>
									<td id="idlabel">ID</td>
									<td><input type="text" id="username" name="username" placeholder="아이디 또는 학번" required autofocus></td>
								</tr>
								<tr>
									<td id="pwlabel">PW</td>
									<td><input type="password" id="password" name="password" placeholder="비밀번호" required></td>
								</tr>
								<tr>
									<td></td>
									<td><button id="login_btn" type="submit">LOGIN</button></td>
								</tr>
							</table>
							<!-- csrf 사용 -->
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						</form>
                </div>
            </div>
        </section>
        
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container px-5"><p class="m-0 text-center text-white">Copyright &copy; 한성대학교 컴퓨터공학부 이경민 Academic Management 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>
