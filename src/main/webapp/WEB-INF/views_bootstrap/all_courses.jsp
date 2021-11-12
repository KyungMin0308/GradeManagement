
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Academic Management All Course</title>
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
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Academic Management</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a></li>
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
                            <h1 class="display-5 fw-bolder text-white mb-2">전체 학기 수강과목 및 <br> 성적 조회</h1>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Features section-->
        <section class="py-5 border-bottom" id="features">
            <div class="container px-5 my-5">
                <div class="row gx-5">
                    <table class="coursetable">
						<thead>
							<tr class="insideline">
								<td class="insideline">수강년도</td>
								<td class="insideline">학기</td>
								<td class="insideline">교과목명</td>
								<td class="insideline">교과구분</td>
								<td class="insideline">학점</td>
								<td class="insideline">성적</td>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="course" items="${all_courses}">
							<tr class="insideline">
								<td class="insideline"><c:out value="${course.year}"></c:out></td>
								<td class="insideline"><c:out value="${course.semester}"></c:out></td>
								<td class="insideline"><c:out value="${course.subject}"></c:out></td>
								<td class="insideline"><c:out value="${course.curriculum}"></c:out></td>
								<td class="insideline"><c:out value="${course.credit}"></c:out></td>
								<td class="insideline"><c:out value="${course.grade}"></c:out></td>
							</tr>
							<c:set var="total" value="${total+course.credit}"></c:set>
							<c:set var="count" value="${count+1}"></c:set>
							<c:set var="grade" value="${course.grade})"></c:set>
							<c:if test="${grade eq 'A+)'}">
								<c:set var="sum" value="${sum+4.5}"></c:set>
							</c:if>
							<c:if test="${grade eq 'A0)'}">
								<c:set var="sum" value="${sum+4.0}"></c:set>
							</c:if>
							<c:if test="${grade eq 'B+)'}">
								<c:set var="sum" value="${sum+3.5}"></c:set>
							</c:if>
							<c:if test="${grade eq 'B0)'}">
								<c:set var="sum" value="${sum+3.0}"></c:set>
							</c:if>
							<c:if test="${grade eq 'C+)'}">
								<c:set var="sum" value="${sum+2.5}"></c:set>
							</c:if>
						</c:forEach>
							<tr class="totalline">
								<td class="totalline">총계</td>
								<td class="totalline"></td>
								<td class="totalline"></td>
								<td class="totalline"></td>
								<td class="totalline">${total}</td>
								<td class="totalline"><fmt:formatNumber value="${sum/count}" pattern=".00"/></td>
							</tr>
						</tbody>
					</table>
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
