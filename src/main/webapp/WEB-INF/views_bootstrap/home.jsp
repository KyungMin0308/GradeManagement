
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <!-- <meta charset="utf-8" /> -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        
        <title>Grade Management Home</title>
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
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Grade Management</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a></li>
                        <li class="nav-item">
                        	<!-- csrf 사용 -->
	                        <c:if test="${pageContext.request.userPrincipal.name != null}">
							<c:url var="logoutUrl" value="/logout"/>
								<form class="form-inline" action="${logoutUrl}" method="post">
						    		<input id="logout_btn" type="submit" value="Logout"/>
						    		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						 		</form>
							</c:if>
						</li>
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
                            <h1 class="display-5 fw-bolder text-white mb-2">Grade Management</h1>
                            <p class="lead text-white-50 mb-4">4학년 1학기까지 수강한 과목(성적)을 조회하는 웹프로그램입니다.<br>Spring MVC 구조와 MySQL을 활용하였으며,<br>웹페이지는 BootStrap을 활용하였습니다.</p>
                            <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                                <a class="btn btn-outline-light btn-lg px-4" href="#features">MENU</a>
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
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
                        <h2 class="h4 fw-bolder">전체 학기 수강과목 조회</h2>
                        <p>지금까지 수강한 모든 과목 및 성적을 조회합니다.</p>
                        <a class="text-decoration-none" href="${pageContext.request.contextPath}/all_course">
                            조회하기
                            <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection-fill"></i></div>
                        <h2 class="h4 fw-bolder">학기별 수강과목 조회</h2>
                        <p>각 학기별로 수강한 과목들의 총 학점을 확인할 수 있습니다. <br> 상세보기를 클릭하면 해당 학기의 성적과 평점을 조회할 수 있습니다.</p>
                        <a class="text-decoration-none" href="${pageContext.request.contextPath}/semester_course">
                            조회하기
                            <i class="bi bi-arrow-right"></i>
                        </a>
                   </div>
                </div>
            </div>
            
            <div class="container px-5 my-5">
                <div class="row gx-5">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-star"></i></div>
                        <h2 class="h4 fw-bolder">예비 수강 신청</h2>
                        <p>다음 학기에 수강할 과목을 작성하여 추가해 볼 수 있습니다.</p>
                        <a class="text-decoration-none" href="${pageContext.request.contextPath}/enrol">
                            신청하기
                            <i class="bi bi-arrow-right"></i>
                        </a>
                   </div>
                   <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-star-fill"></i></div>
                        <h2 class="h4 fw-bolder">예비 수강 신청 조회</h2>
                        <p>예비 수강 신청 과목을 조회 및 삭제할 수 있습니다.</p>
                        <a class="text-decoration-none" href="${pageContext.request.contextPath}/created">
                            조회하기
                            <i class="bi bi-arrow-right"></i>
                        </a>
                   </div>
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
