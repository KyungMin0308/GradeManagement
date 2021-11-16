# AcademicManagement

### **1. Description**
* **Spring Framework**를 활용한 학점 관리 프로그램입니다.
* 4학년 1학기까지 들었던 모든 과목들의 정보를 조회할 수 있습니다.
* 4학년 2학기에 듣고 싶은 과목 정보를 입력하여 예비 수강신청 및 삭제를 할 수 있습니다.


### **2. Environment**
* **Eclispe**
  + Spring Legacy Project
    - Template : Spring MVC 선택
* **Server**
  + Tomcat
* **Database**
  + MySQL
  
  
### **3. Packages**
* **controller**
  + 사용자의 요청(request)을 처리하는 Class
  + Service Class의 객체를 사용하여 필요한 작업을 수행
  + **Custom Login Form**을 사용하기 위해 LoginController 클래스 사용
  + **HomeController, CourseController, LoginController**
* **dao**
  + DAO Class를 위한 패키지
  + DB에 접근하여 수행할 작업을 메서드로 구현
  + **CourseDao**
* **model**
  + 애플리케이션에서 사용할 Model Class를 위한 패키지
  + Annotation을 통해 Data Validation을 위한 제약 조건 설정
  + **Course**
* **service**
  + Service Layer를 구현하는 Class
  + DAO Class의 객체를 사용하여 필요한 작업을 수행
  + **CourseService**
* **filter**
  + 기본 Filter 클래스를 포함하는 패키지
  + 사용자의 URL 요청을 콘솔에 출력
  + **CourseFilter**


### **4. 주요 Files**
* **pom.xml**
  + 프로젝트 기본 정보 및 Dependency 관리
  + 사용한 Dependency(Spring Legacy Project 기반)
    - lombok
    - hibernate-validator
    - spring-jdbc
    - mysql-connector-java
    - commons-dbcp2
    - spring-security-core
    - spring-security-web
    - spring-security-config
* **web.xml**
  + contextConfigLocation 설정(dao-context.xml, service-context.xml, security-context.xml)
  + DispatcherServlet 설정(servlet-context.xml)
  + SpringSecurityFilter
  + CharacterEncodeingFilter(한글 깨짐 필터링)
  + src/main/webapp/WEB-INF
* **jdbc.properties**
  + Database를 접근하기 위한 Property 정보
  + src/main/webapp/WEB-INF/props
* **views_bootstrap**
  + BootStrap을 사용한 JSP 파일들
  + src/main/webapp/WEB-INF/views_bootstrap
* **bootstrap**
  + 사용한 BootStrap 템플릿에 대한 기본 정보
  + src/main/webapp/resources/bootstrap
* **css**
  + JSP 파일에 적용되는 CSS 스타일 정보
  + src/main/webapp/resources/css
* **schema.sql**
  + MySQL Table Schema 파일
  + Model 클래스에 대한 정보
    - **users** 테이블(사용자 정보)
    - **authorities** 테이블(사용자별 접근 권한)
    - **coures_and_grade** 테이블(수강과목 및 성적 저장)
* **data.sql**
  + MySQL Table Data 파일
