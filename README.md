# GradeManagement

### **1. 제작 동기 및 진행 과정**
* **[제작 동기]**
  + 4학년 1학기를 마친 후 그동안 배웠던 개념들을 다시 공부하면서 정리해보기 위해.
  + 백엔드 개발자라면 DB와의 연동은 필수라고 생각했기 때문에, DB를 연동하여 프로그램을 개발하는 경험을 축적하기 위해.
  + 대학 과제가 아닌 스스로 계획, 설계하여 하나의 프로젝트를 완성해보는 경험을 축적하기 위해.
* **[진행 과정]**
  + **[1주차(21.07.12 ~ 21.07.16)]**
    - Spring MVC Framework를 활용하여 프로젝트의 전체적인 아키텍처 구상
    - MySQL Workbench를 사용하여 과목 테이블을 작성하고 과목 정보 저장
    - Controller, Model, DAO, Service 클래스를 중심으로 백엔드 로직 작성(Create, Read, Delete)
  + **[2주차(21.07.19 ~ 21.07.23)]**
    - 적절한 BootStrap Template를 찾고 JSP와 CSS를 사용하여 세부적으로 페이지 디자인
    - MySQL에 저장된 과목 정보가 백엔드 로직에 의해 정상적으로 View에 전달되는지 확인
    - 전달되는 정보를 바탕으로 동적으로 View 생성 시 평점을 계산하는 로직 작성(JSTL 사용)
  + **[3주차(21.07.26 ~ 21.07.30)]**
    - 로그인 및 로그아웃 기능을 구현하기 위해 프로젝트에 Spring Security 적용
    - MySQL에 사용자 테이블을 작성하고 사용자 정보 저장(인증 및 인가 정보)
    - 백엔드 로직을 다시 확인하면서 부족한 주석을 달고 페이지 디자인 다듬으면서 마무리


### **2. 개발 환경**
* **Eclispe(IDE)**
  + Spring Legacy Project (Template: Spring MVC)
* **Backend**
  + Java, Spring MVC, JSP, JSTL
* **Frontend**
  + Bootstrap Template, JSP
* **Server**
  + Apache Tomcat
* **Database**
  + MySQL
  
  
### **3. 프로젝트 소개 및 구조**
* **[프로젝트 소개]**
  + 4학년 1학기까지 수강했던 모든 과목의 정보를 조회할 수 있는 웹 프로그램입니다.
  + Spring MVC Framework를 사용하여 전체적인 프로젝트의 구조를 설계 및 작성하였습니다.
  + 서버는 Apache Tomcat 9.0, 데이터베이스는 MySQL 8을 사용하였습니다.
  + CRUD 기능 중 CRD 기능만을 구현하였습니다.
* **[주요 기능(CRD)]**
  + 4학년 1학기까지 수강한 모든 과목의 학점 및 평점 조회(Read)
  + 1학년부터 4학년까지 각 학기별 수강한 과목들의 학점 및 평점 조회(Read)
  + 4학년 2학기에 듣고 싶은 과목 정보를 입력받아 DB에 저장 및 삭제(Create & Delete)
* **[패키지 구조]**
  + ![패키지 구조](https://user-images.githubusercontent.com/70512325/154840034-2626e067-7d90-479d-8d89-fc7e5a5109af.png)
  + ![패키지 구조2](https://user-images.githubusercontent.com/70512325/154258189-6410b0d0-c36a-402f-a47f-856e2d634808.png)

* **[데이터베이스 구조]**
  + ![AcademicManagement EER 다이어그램](https://user-images.githubusercontent.com/70512325/154257973-ce96f92d-3c28-4ef5-b03c-b84ce80121b4.png)


### **4. 프로젝트 진행 중 겪은 문제점과 해결 방법**
* **[문제점 1]: 새로운 과목 정보를 입력받고 DB에 저장할 때 한글이 깨져서 저장되는 현상**
  + **[해결 방법 1]: 테이블 설정 변경 - 실패**
    - 처음에는 테이블의 Default Character Set이 잘못되어 발생하는 것으로 판단.
    - MySQL Workbench에서 테이블 설정의 Charset/Collection 부분의 값을 utf8/utf8_bin으로 변경.
    - 새로운 과목 정보를 입력받고 DB에 저장한 후 확인했지만 해결되지 않음을 확인.

  + **[해결 방법 2]: web.xml에 한글 깨짐 방지 필터 코드 추가 - 해결**
    - 데이터베이스의 문제가 아니라면 프로그램에서 입력된 데이터를 DB로 전송할 때 글자가 깨져서 전송되는 경우를 생각해볼 수 있음.
    - 구글링을 통해 한글 깨짐을 방지하는 필터를 web.xml에 추가하는 방법을 찾음.
    - 새로운 과목 정보를 입력받고 DB에 저장한 후 확인한 결과 제대로 저장되는 것을 확인.
    - ![한글깨짐 방지 필터](https://user-images.githubusercontent.com/70512325/154258963-35d3fc5b-85ac-4729-b436-692155d7863e.png)

* **[문제점 2]: 동적으로 View 페이지 생성 시 학점을 기준으로 평점을 계산하는 방법**
  + **[해결 방법]: JSTL을 사용하여 View에 평점 계산 로직을 작성 - 해결**
    - 초기에는 방법이 생각나지 않아 Controller에서 View로 Model을 넘겨줄 때 평점을 계산해서 넘겨주는 방법을 사용하려 했지만 Model 클래스의 필드에 평점은 포함되어 있지 않았음.
    - Model 클래스는 과목 정보를 담고 있는데, 과목 정보에는 평점이 포함되는 것이 자연스럽지 않다고 판단.
    - 수업 중 배웠던 JSTL을 활용해 View에서 직접 평점을 계산하도록 로직을 설계하기로 결정.
    - JSTL의 태그 라이브러리 중 Core를 활용하면 C언어를 작성하는 것과 같이 코드 작성이 가능했기 때문에, JSTL Core 사용법에 대해 공부한 뒤 forEach, if, set을 활용하여 로직 작성.
    - 평점을 소수점 아래 2자리까지만 표기하기 위해 JSTL FMT 라이브러리를 사용.
    - 프로그램에 의해 동적으로 View가 생성될 때 평점이 제대로 계산되는 것을 확인.
    - ![JSTL 사용 평점 계산](https://user-images.githubusercontent.com/70512325/154259037-5146cb25-0aab-43ad-bb4d-841d18f2a293.png)

### **5. 보완할 점 및 느낀점**
* **[보완할 점]**
  + 로직을 좀 더 간결하게 작성할 수 있는 방법이 있는가?
  + CRUD 중 CRD만 구현하였는데 Update 기능을 구현하기 위해 프로그램에 어떤 부분을 추가해야 하는가?(ex. 새로운 과목 정보 저장 후 잘못된 정보의 수정)
* **[느낀 점]**
  + 거창하진 않지만 하나의 프로젝트를 무사히 마쳤다는 것에 대한 성취감.
  + 로직 작성 중 발견한 문제점들에 대한 해결 방법을 찾아가며 주도적인 공부 습관의 중요성.
  + Spring MVC를 사용하여 프로그램을 작성하였는데 Spring Boot까지 배운 상황에서 확실히 Spring은 Spring Boot에 비해 설정 파일(web.xml, servlet-context.xml, dao-context.xml 등) 작성의 번거로움이 존재함.
  + Spring이나 Spring Boot를 사용하여 다양한 프로젝트를 시도해야겠다는 필요성.
