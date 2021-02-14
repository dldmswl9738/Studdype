-- 규칙: 테이블명 주석달기
-- 예시: -- 모임 --모임댓글

-- location_si/location_gu
-- LocationProject_location.jsp실행 시 insert 됨.
--SELECT
SELECT * FROM FREE_BOARD;
select * from study;
select * from MEMBER;
select * from study_applying;
select * from study_member;
SELECT * FROM MEET_BOARD;
INSERT INTO PHOTO_BOARD VALUES(0,1,'photoboard test', 1, 'content test', SYSDATE, DEFAULT);
SELECT * FROM PHOTO_BOARD;
SELECT * FROM PHOTO_FILE;

UPDATE STUDY SET LEADER_NO=2 WHERE S_NO = 71;
--스터디 카테고리 
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, 'IT');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '자격증');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '공무원');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '뷰티');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '대입/수능');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '어학/회화');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '취업스터디');
INSERT INTO STUDY_CATEGORY VALUES(CATEGORYSEQ.NEXTVAL, '기타');
select * from study_category;
insert into STUDY_APPLYING values(49,1,'Y','ddd');
--멤버 테이블
SELECT S_NAME FROM STUDY WHERE S_NO = 1;
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'qwer', 'qwer', 'qwer', '616737-1010101', 'M', '010-6661-9068', 'qwerqewr@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'bin3005', 'bin3005', '이승빈', '960308-1110101', 'M', '010-8201-9068', 'bin2205@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'admin','1234','관리자','950111-1112123','M','010-1234-1234','admin12@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'user', 'user', 'user', '960308-1310101', 'M', '010-8221-9068', 'bin2205@nxver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'uesr2', 'user2', 'uesr2', '950201-1230134', 'M', '010-5501-9068', 'binzz205@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'uesr3', 'user3', 'uesr3', '960301-1110101', 'M', '030-8201-9068', 'bin3205@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'dudwnd2', 'hree5416!@', '이영중', '911229-1010101', 'M', '010-5290-7357', '2dudwnd@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'leader22', 'leader9', '테스트팀장', '966308-1010101', 'M', '036-8801-9068', 'bin3105@naver.com');

INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'bin22', 'bin25', '이승빈', '914308-1880101', 'M', '010-8901-9068', 'bin2605@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'admin22','1236','관리자','935111-1119953','M','010-1774-1234','admin12@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'user22', 'user0', 'user0', '922208-0010101', 'M', '010-1121-9068', 'binbsaa5@nxver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'uesr22', 'user21', 'uesr21', '150201-6630134', 'M', '040-5501-9068', 'bi205@naver.com');
INSERT INTO MEMBER VALUES(MEMBERSEQ.NEXTVAL, 'uesr22', 'user16', 'uesr16', '138994-4438581', 'M', '225-1231-9068', 'bsbz07@n6der.com');
select * from study_member where mem_no = 9;
select * from study_member;
UPDATE STUDY SET LEADER_NO = 1 WHERE S_NO=1;
insert into study_member values('71','21');
--자유 게시판

INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '1번째 글입니다.', 1,  '1번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '2번째 글입니다.', 1,  '2번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '3번째 글입니다.', 1,  '3번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '4번째 글입니다.', 1,  '4번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '5번째 글입니다.', 1,  '5번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '6번째 글입니다.', 1,  '6번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '7번째 글입니다.', 1,  '7번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '8번째 글입니다.', 1,  '8번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '9번째 글입니다.', 1,  '9번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '10번째 글입니다.', 1,  '10번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '11번째 글입니다.', 1,  '11번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '12번째 글입니다.', 1,  '12번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '13번째 글입니다.', 1,  '13번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '14번째 글입니다.', 1,  '14번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '15번째 글입니다.', 1,  '15번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '16번째 글입니다.', 1,  '16번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '17번째 글입니다.', 1,  '17번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '18번째 글입니다.', 1,  '18번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '19번째 글입니다.', 1,  '19번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '20번째 글입니다.', 1,  '20번째 글 내용 입니다', SYSDATE, 0);
INSERT INTO FREE_BOARD VALUES(FREEBOARDSEQ.NEXTVAL, 1, '24번째 글입니다.', 2,  '24번째 글 내용 입니다', SYSDATE, 0);

SELECT * FROM PHOTO_BOARD ORDER BY B_NO;
INSERT INTO PHOTO_BOARD VALUES(0, 1, 'TEST', 1, 'TESTTEST', SYSDATE, 0);
--스터디 생성

INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 2, '신청 테스트3', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름2', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름3', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름4', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름5', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름6', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름7', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름8', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름9', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름10', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름11', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름12', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름13', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름14', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름15', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름16', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름17', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '안녕하세요', '스터디할사람', '우리 스터디는 재밋어요', NULL, 2, 2, 2, 15, 0);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름18', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름19', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름20', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름21', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름22', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름23', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름24', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름25', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름26', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름27', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름28', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름29', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름30', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름31', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름32', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름33', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, '스터디 이름34', '스터디 한줄 소개2', '스터디 자세한 소개1', NULL, 1, 1, 1, 10, 5);



INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 1, 'JAVA를 잡아', '프로그래밍언어 JAVA를 배우는 스터디 모임', '프로그래밍언어 JAVA를 배우는 스터디 모임 \n 주로 대학생으로 이루어져있음!! ','사진',1,1,1,6,1 );
INSERT INTO STUDY VALUES(STUDYSEQ.NEXTVAL, 2, '취직하자', '취직이 하고싶은  스터디 모임', '취직연습','사진',1,1,1,6,1 );





-- 모임 게시판
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임1', 1, '모임1의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임2', 1, '모임2의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임3', 1, '모임3의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임4', 1, '모임4의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임5', 1, '모임5의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임6', 1, '모임6의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임7', 1, '모임7의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임8', 1, '모임8의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임9', 1, '모임9의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임10', 1, '모임10의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임11', 1, '모임11의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임12', 1, '모임12의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임13', 1, '모임13의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임14', 1, '모임14의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임15', 1, '모임15의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);
INSERT INTO MEET_BOARD VALUES(
MEETBOARDSEQ.NEXTVAL, 1, '모임16', 1, '모임16의 상세내용 입니다.', '서울특별시 강남구 선릉로157길 33', '1층',
TO_DATE('2021.01.01','YYYY.MM.DD'),TO_DATE('14:00','HH24:MI'),SYSDATE,TO_DATE('2021.12.20','YYYY.MM.DD'),TO_DATE('2021.12.31','YYYY.MM.DD'), 0);


-- 모임 댓글
INSERT INTO MEET_REPLY VALUES(
MEETREPLYSEQ.NEXTVAL,1,MEETGROUPSEQ.NEXTVAL,0,0,1,'첫번째댓글입니다.',SYSDATE);
INSERT INTO MEET_REPLY VALUES(
MEETREPLYSEQ.NEXTVAL,1,MEETGROUPSEQ.NEXTVAL,0,0,2,'두번째댓글입니다.',SYSDATE);
INSERT INTO MEET_REPLY VALUES(
MEETREPLYSEQ.NEXTVAL,1,MEETGROUPSEQ.NEXTVAL,0,0,1,'세번째댓글입니다.',SYSDATE);
INSERT INTO MEET_REPLY VALUES(
MEETREPLYSEQ.NEXTVAL,1,MEETGROUPSEQ.NEXTVAL,0,0,2,'네번째댓글입니다.',SYSDATE);
INSERT INTO MEET_REPLY VALUES(
MEETREPLYSEQ.NEXTVAL,1,MEETGROUPSEQ.NEXTVAL,0,0,2,'다섯번째댓글입니다.',SYSDATE);

-- 모임 대댓글 
INSERT INTO MEET_REPLY
VALUES(MEETREPLYSEQ.NEXTVAL, 1,
                            (
                            SELECT R_GROUPNO 
                            FROM MEET_REPLY 
                            WHERE R_NO = 1
                            ),
                            1,
                            (
                            SELECT MAX(R_ORDER)
                            FROM MEET_REPLY
                            WHERE R_GROUPNO = (
                                              SELECT R_GROUPNO
                                              FROM MEET_REPLY
                                              WHERE R_NO = 1
                                              )
                            ) + 1, 1, '첫번째 대댓글입니다.', SYSDATE);
INSERT INTO MEET_REPLY
VALUES(MEETREPLYSEQ.NEXTVAL, 2,
                            (
                            SELECT R_GROUPNO 
                            FROM MEET_REPLY 
                            WHERE R_NO = 1
                            ),
                            1,
                            (
                            SELECT MAX(R_ORDER)
                            FROM MEET_REPLY
                            WHERE R_GROUPNO = (
                                              SELECT R_GROUPNO
                                              FROM MEET_REPLY
                                              WHERE R_NO = 1
                                              )
                            ) + 1, 1, '두번째 대댓글입니다.', SYSDATE);  


-------자유게시판 댓글
--댓글 순서 편하게 보기
SELECT * FROM FREE_REPLY WHERE B_NO = 132 ORDER BY R_GROUPNO, R_ORDER;
--자유게시판 댓글 삭제 확인용 insert
INSERT INTO FREE_REPLY VALUES (5, 132,3, 0, 1, 1, '삭제 수정테스트중', SYSDATE  );
INSERT INTO FREE_REPLY VALUES (6, 132,3, 1, 2, 1, '삭제 수정테스트중', SYSDATE  );
INSERT INTO FREE_REPLY VALUES (7, 132,3, 1, 3, 1, '삭제 수정테스트중', SYSDATE  );

--자유게시판 일반 insert
INSERT INTO FREE_REPLY VALUES (FREEREPLYSEQ.NEXTVAL, 132, FREEGROUPSEQ.NEXTVAL, 1, 2, 1, '삭제 수정테스트중', SYSDATE  );

-- 도서 게시판 insert
INSERT INTO BOOK_BOARD VALUES(BOOKBOARDSEQ.NEXTVAL, 5, '도서 추천', 1, '추천드립니다.', SYSDATE);

INSERT INTO BOOK VALUES(BOOKSEQ.NEXTVAL, 1, 'jstl언어 추천해드립니다.', 4, 'java추천해드려요~', SYSDATE,
'탕수육', '탕수육', '탕수육', 'nodata', 'nodata', 'N');
select * from BOOK;
--자유게시판 댓글 답글 insert
INSERT INTO FREE_REPLY 
VALUES(
    FREEREPLYSEQ.NEXTVAL,
    132,
    ( SELECT R_GROUPNO FROM FREE_REPLY WHERE R_NO = 1 ),
    1,
    (SELECT MAX(R_ORDER)  FROM FREE_REPLY  WHERE R_GROUPNO =(SELECT R_GROUPNO FROM FREE_REPLY WHERE R_NO = 1) ) +1,
    1,
    '답글 INSERT 연습',
    SYSDATE
) ;

--자유게시판 제약조건확인
ALTER TABLE FREE_BOARD MODIFY B_CONTENT LONG;
SELECT * FROM ALL_CONSTRAINTS
WHERE TABLE_NAME = 'FREE_BOARD';

ALTER TABLE FREE_BOARD DROP CONSTRAINT SYS_C009669;
UPDATE FREE_BOARD SET B_CONTENT = NULL;
ALTER TABLE FREE_BOARD MODIFY B_CONTENT LONG;

COMMIT;

select * from member;