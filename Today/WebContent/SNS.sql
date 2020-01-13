-- SNS 프로젝트 DB 생성 예시
CREATE USER SNS IDENTIFIED BY ABC123;
GRANT CONNECT, RESOURCE, CREATE VIEW TO SNS;

-- 회원 테이블 생성
CREATE TABLE MEMBER(
IDX NUMBER(8) CONSTRAINT MEMBER_IDX_PK PRIMARY KEY, -- 회원번호 PK
NAME VARCHAR2(30) NOT NULL, -- 이름
NICK_NAME VARCHAR2(30) CONSTRAINT MEMBER_NICK_UK UNIQUE NOT NULL, -- 닉네임 UK
USERID VARCHAR2(20) CONSTRAINT MEMBER_USERID_UK UNIQUE NOT NULL , -- 아이디 UK
PWD VARCHAR2(20) NOT NULL, -- 비밀번호
EMAIL VARCHAR2(100), -- 이메일
BIRTH VARCHAR2 (20), -- 생년월일
HP1 CHAR(3) NOT NULL, -- 010
HP2 CHAR(4) NOT NULL, -- 1234
HP3 CHAR(4) NOT NULL, -- 5678
POST CHAR(5) NOT NULL, -- 우편번호
ADDR1 VARCHAR2(100) NOT NULL, -- 주소1
ADDR2 VARCHAR2(100), -- 추가 주소
INDATE DATE DEFAULT SYSDATE, -- 가입일
MILEAGE NUMBER(10) DEFAULT 1000, -- 포인트 마일리지
M_STATE NUMBER(2) DEFAULT 0, -- 회원상태. 0:일반회원 -1:정지회원 -2:탈퇴회원
PROFILE VARCHAR2(100) -- 프로필 사진 위치
);

-- 게시판1 테이블 생성
CREATE TABLE BOARD1(
BOARDNUM NUMBER(10) CONSTRAINT BOARD1_NUM_PK PRIMARY KEY, -- 게시물번호 PK , SEQ_NEXTVAL
ADDR VARCHAR2(100), -- 저장위치
TITLE VARCHAR2(60), -- 게시물 제목
CONTENT VARCHAR2(1500), -- 게시물 내용
AUTHOR VARCHAR2(20) CONSTRAINT BOARD1_AUTHOR_FK REFERENCES MEMBER (NICK_NAME), -- �ۼ���(FK)
-- MEMBER(회원테이블)의 NICK_NAME(닉네임)값을 참조하는 FK로 생성
WDATE DATE DEFAULT SYSDATE -- 작성시간
);

-- 댓글 테이블 생성
CREATE TABLE REPLY(
REPLY_NUM NUMBER(10) CONSTRAINT REPLY_NUM_PK PRIMARY KEY, -- 댓글번호 PK , SEQ_NEXTVAL
BOARD_NUM NUMBER(10) CONSTRAINT REPLY_BOARDNUM_FK REFERENCES BOARD1 (BOARDNUM),
-- BOARD1(게시물텡디블)의 BOARDNUM(글번호)값을 참조하는 FK로 설정하여 댓글이 게시물에 맞게 보여질 수 있도록 FK 설정
CONTENT VARCHAR2(60), -- 댓글 내용
AUTHOR VARCHAR2(20) CONSTRAINT REPLY_AUTHOR_FK REFERENCES MEMBER (NICK_NAME), -- 작성자(FK)
-- MEMBER(회원테이블)의 NICK_NAME(닉네일)값을 참조하는 FK로 생성
WDATE DATE DEFAULT SYSDATE -- 댓글 작성시간 
);

-- 회원테이블 시퀀스
CREATE SEQUENCE MEMBER_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

-- 게시판1 시퀀스
CREATE SEQUENCE BOARD1_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

-- 댓글 시퀀스
CREATE SEQUENCE REPLY_SEQ
START WITH 1
INCREMENT BY 1
NOCACHE;

-- 데이터 삽입 예시
INSERT INTO MEMBER(
IDX,NAME,NICK_NAME,USERID,PWD,EMAIL,BIRTH,HP1,HP2,HP3,POST,ADDR1,ADDR2,INDATE,MILEAGE,M_STATE,PROFILE)
VALUES(
MEMBER_SEQ.NEXTVAL,'김덕구','닉네임','USERID','1234','HONG12@NAVER.COM','2020/01/04',010,1234,5678,10521,
'서울시 금천구 가산동','가산디지털단지 2동',SYSDATE,1000,0,'images/profile2.jpg'););
-- INSERT INTO MEMBER VALUES(MEMBER_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?,?,?,?,SYSDATE,1000,0,?);
-- ps.setString(1, member.getName());
-- ps.setString(2, member.getNick()); ...

INSERT INTO BOARD1(
BOARDNUM,ADDR,TITLE,CONTENT,AUTHOR,WDATE)
VALUES(
BOARD1_SEQ.NEXTVAL,'board/images/test1.jpg','���� �Դϴ�!','���� �Դϴ�!','�г���',SYSDATE);
-- INSERT INTO BOARD1 VALUES(BOARD1_SEQ.NEXTVAL,?,?,?,?,SYSDATE);
-- ps.setString(1, board1.getAddr());
-- ps.setString(2, board1.getTitle());
-- ps.setString(3, board1.getContent());
-- ps.setString(4, member.getNick()); ...

INSERT INTO REPLY(
REPLY_NUM,BOARD_NUM,CONTENT,AUTHOR,WDATE)
VALUES(
REPLY_SEQ.NEXTVAL,1,'댓글 내용 입니다.','닉네임',SYSDATE);
-- INSERT INTO REPLY VALUES(REPLY_SEQ.NEXTVAL,?,?,?,SYSDATE);
-- ps.setInt(1, board1.getBoardNum());
-- ps.setString(2, reply.getContent());
-- ps.setString(4, member.getNick()); ...