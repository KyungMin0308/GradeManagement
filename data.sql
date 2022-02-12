#users table
insert into users (username, password, enabled) values ('admin', '{noop}adminpw', 1);
insert into users (username, password, enabled) values ('alice', '{noop}alicepw', 0);
insert into users (username, password, enabled) values ('1692127', '{noop}16pw', 1);

#authorities table
insert into authorities (username, authority) values ('admin', 'ROLE_ADMIN');
insert into authorities (username, authority) values ('alice', 'ROLE_USER');
insert into authorities (username, authority) values ('1692127', 'ROLE_USER');

#courses_and_grade table
#2016년도 1학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '컴퓨터프로그래밍1', '전공', 3, 'B0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '이산수학', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '운동과 건강', '교양', 2, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '기초공학수학', '교양', 2, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '영어커뮤니케이션 청취/회화 II', '교양', 2, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '소프트웨어의 이해', '교양', 2, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 1, '사고와 표현I', '교양', 2, 'B+');
#2016년도 2학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '컴퓨터프로그래밍2', '전공', 3, 'C+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '창의적공학설계', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, 'Word 및 Powerpoint 활용', '교양', 2, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '디지털미디어의 이해와 실제', '교양', 2, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '통계학', '교양', 2, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '공학기술개론', '교양', 2, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '영어커뮤니케이션 독해/작문 II', '교양', 2, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2016, 2, '사고와 표현II', '교양', 2, 'B+');
#2019년도 1학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '객체지향언어1', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '자료구조', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '프로그래밍랩', '전공', 3, 'B0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '지식재산입문', '교양', 3, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '컴퓨터와 인터넷개론', '교양', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 1, '멀티미디어와 현대사회', '교양', 3, 'A+');
#2019년도 2학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '객체지향언어2', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '데이터통신', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '알고리즘', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '빅데이터기초', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '게임그래픽&애니메이션', '전공', 3, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '웹프로그래밍', '전공', 3, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '리더십', '교양', 3, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2019, 2, '4차 산업혁명과 현대조직', '교양', 3, 'B+');
#2020년도 1학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '데이터베이스', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '소프트웨어공학', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '운영체제', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '컴퓨터그래픽스', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '데이터마이닝', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, '융복합적 사고와 글쓰기', '교양', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 1, 'Basic Career English', '교양', 3, 'A+');
#2020년도 2학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '시스템프로그래밍', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '네트워크프로그래밍', '전공', 3, 'B+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '설계패턴', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '컴퓨터비전', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '고급모바일프로그래밍', '전공', 3, 'A0');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '웹프레임워크1', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2020, 2, '디자인Thinking', '교양', 2, 'B+');
#2021년도 1학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 1, '정보보안', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 1, '빅데이터프로그래밍', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 1, '웹프레임워크2', '전공', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 1, '역사와 문명', '교양', 3, 'A+');
#2021년도 2학기
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 2, '그린IT의 이해', '교양', 3, 'A+');
insert into courses_and_grade (year, semester, subject, curriculum, credit, grade) values (2021, 2, '1인 미디어와 융합콘텐츠', '교양', 3, 'A+');