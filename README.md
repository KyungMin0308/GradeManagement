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
  + **src/main/webapp/WEB-INF**
* **jdbc.properties**
  + Database를 접근하기 위한 Property 정보
  + **src/main/webapp/WEB-INF/props**
* **views_bootstrap**
  + BootStrap을 사용한 JSP 파일들
  + **src/main/webapp/WEB-INF/views_bootstrap**
* **bootstrap**
  + 사용한 BootStrap 템플릿에 대한 기본 정보
  + **src/main/webapp/resources/bootstrap**
* **css**
  + JSP 파일에 적용되는 CSS 스타일 정보
  + **src/main/webapp/resources/css**
* **schema.sql**
  + MySQL Table Schema 파일
  + Model 클래스에 대한 정보
    - **users** (사용자 정보)
    - **authorities** (사용자별 접근 권한)
    - **coures_and_grade** (수강과목 및 성적 저장)
* **data.sql**
  + MySQL Table Data 파일


### **5. ERR Diagram**
![AcademicManagement EER 다이어그램](https://user-images.githubusercontent.com/70512325/146889889-3e675bf1-4547-46cf-b7fc-246e656f2031.png)


### **6. 실행화면**
* **로그인**
![로그인 화면](https://user-images.githubusercontent.com/70512325/144036965-58b92e32-da3c-4a5d-8784-007d15a99550.png)
---

* **로그아웃**
![로그아웃](https://user-images.githubusercontent.com/70512325/144038979-dc8899a0-fa60-464f-928e-4209abc99ae7.png)
---

* **로그인 실패**
![로그인 실패 화면](https://user-images.githubusercontent.com/70512325/144038922-e78b7859-dd87-483a-87e7-3df9db5b9d8c.png)
---

* **로그인 성공**
![로그인 성공](https://user-images.githubusercontent.com/70512325/144039259-ba5c5bc2-ea40-4e2e-9b99-8d4056cc1f77.png)
---

* **전체 학기 수강 과목 및 성적 조회**
![전체 학기 수강 과목 조회](https://user-images.githubusercontent.com/70512325/144039529-04d2b2e1-d955-4b25-9dc2-6c644141502a.png)
---

* **학기별 이수 학점 및 성적 조회(상세보기 아이콘을 클릭하여 상세 조회)**
![학기별 이수 학점 조회](https://user-images.githubusercontent.com/70512325/144039561-4bef2a13-b3fe-467a-80e5-f9435d0194d7.png)
![학기별 이수 학점 조회2](https://user-images.githubusercontent.com/70512325/144039568-ec448cff-e3f2-4fa8-af04-6ef3aeab5a75.png)
---

* **예비 수강 신청**
![예비 수강 신청 화면](https://user-images.githubusercontent.com/70512325/144039609-1f837b47-9191-499c-83af-2899f1c8ea9f.png)
![예비 수강 신청 성공](https://user-images.githubusercontent.com/70512325/144039619-b8cc516d-d842-476d-b5ae-8044ad048793.png)
---

* **예비 수강 신청 과목 조회 및 삭제(삭제 링크를 클릭하여 삭제 가능)**
![예비 수강 신청 과목 조회](https://user-images.githubusercontent.com/70512325/144039651-e94c124a-22fb-414d-ba39-3d2f55e0ca5e.png)
![예비 수강 신청 과목 삭제](https://user-images.githubusercontent.com/70512325/144039658-57c62478-b6f0-4b7e-b83a-bc21a6a782f6.png)
