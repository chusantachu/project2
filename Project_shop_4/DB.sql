--------------------------------------------------------
--  파일이 생성됨 - 목요일-1월-12-2023   
--------------------------------------------------------
DROP SEQUENCE "SHOP"."B_NUM";
DROP SEQUENCE "SHOP"."CUST_SEQ";
DROP SEQUENCE "SHOP"."C_NUM";
DROP SEQUENCE "SHOP"."PRODUCT_SEQ";
DROP SEQUENCE "SHOP"."QNA_ANSWER_SEQ";
DROP SEQUENCE "SHOP"."Q_NUM";
DROP SEQUENCE "SHOP"."SEQ_CART";
DROP SEQUENCE "SHOP"."SEQ_CUSTID";
DROP SEQUENCE "SHOP"."SEQ_ONUM";
DROP SEQUENCE "SHOP"."SEQ_CART";
DROP SEQUENCE "SHOP"."SEQ_ONUM";
DROP TABLE "SHOP"."ADMIN" cascade constraints;
DROP TABLE "SHOP"."CART" cascade constraints;
DROP TABLE "SHOP"."CUSTOMER" cascade constraints;
DROP TABLE "SHOP"."ORDER_LIST" cascade constraints;
DROP TABLE "SHOP"."PRODUCT" cascade constraints;
DROP TABLE "SHOP"."QNA" cascade constraints;
DROP TABLE "SHOP"."QNA_ANSWER" cascade constraints;
DROP TABLE "SHOP"."REVIEW" cascade constraints;
DROP TABLE "SHOP"."REVIEW_CMT" cascade constraints;
DROP TABLE "SHOP"."CUSTOMER" cascade constraints;
DROP TABLE "SHOP"."PRODUCT" cascade constraints;
DROP TABLE "SHOP"."QNA" cascade constraints;
DROP TABLE "SHOP"."REVIEW" cascade constraints;
DROP TABLE "SHOP"."ADMIN" cascade constraints;
DROP TABLE "SHOP"."CART" cascade constraints;
DROP TABLE "SHOP"."QNA_ANSWER" cascade constraints;
DROP TABLE "SHOP"."REVIEW_CMT" cascade constraints;
DROP TABLE "SHOP"."ORDER_LIST" cascade constraints;
DROP PROCEDURE "SHOP"."C_O_ADD";
DROP PROCEDURE "SHOP"."O_C_ADD";
DROP PROCEDURE "SHOP"."O_O_ADD";
DROP PROCEDURE "SHOP"."P_C_ADD";
--------------------------------------------------------
--  DDL for Sequence B_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."B_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CUST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."CUST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 87 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence C_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."C_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 160 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PRODUCT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."PRODUCT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 97 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_ANSWER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."QNA_ANSWER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence Q_NUM
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."Q_NUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 57 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CART
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."SEQ_CART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CUSTID
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."SEQ_CUSTID"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ONUM
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."SEQ_ONUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_CART
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."SEQ_CART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ONUM
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."SEQ_ONUM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 541 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "SHOP"."ADMIN" 
   (	"AD_ID" VARCHAR2(20 BYTE), 
	"AD_PWD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "SHOP"."CART" 
   (	"C_NUM" NUMBER(10,0), 
	"PRODUCT_NUM" NUMBER(30,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"C_COUNT" NUMBER(10,0), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"IMAGE" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "SHOP"."CUSTOMER" 
   (	"NAME" VARCHAR2(30 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"ADDR" VARCHAR2(150 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"CUSTID" NUMBER(20,0), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_LIST
--------------------------------------------------------

  CREATE TABLE "SHOP"."ORDER_LIST" 
   (	"O_NUM" NUMBER(30,0), 
	"PRODUCT_NUM" NUMBER(30,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"C_COUNT" NUMBER(10,0), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"O_DATE" DATE DEFAULT SYSDATE, 
	"IMAGE" VARCHAR2(500 BYTE), 
	"PAYMENT" VARCHAR2(15 BYTE) DEFAULT '결제완료', 
	"ID" VARCHAR2(20 BYTE), 
	"RECEIVER" VARCHAR2(30 BYTE), 
	"O_ADDR" VARCHAR2(150 BYTE), 
	"O_PHONE" VARCHAR2(15 BYTE), 
	"MEMO" VARCHAR2(500 BYTE), 
	"O_PAYMENT" VARCHAR2(50 BYTE), 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT" 
   (	"PRODUCT_NUM" NUMBER(30,0), 
	"CATEGORY" VARCHAR2(10 BYTE), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"IMAGE" VARCHAR2(500 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "SHOP"."QNA" 
   (	"Q_NUM" NUMBER(10,0), 
	"CUSTID" NUMBER(10,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"Q_TITLE" VARCHAR2(150 BYTE), 
	"Q_CONTENTS" VARCHAR2(2000 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"Q_DATE" DATE DEFAULT SYSDATE, 
	"Q_HITS" NUMBER(*,0) DEFAULT 1, 
	"Q_PWD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA_ANSWER
--------------------------------------------------------

  CREATE TABLE "SHOP"."QNA_ANSWER" 
   (	"QA_NUM" NUMBER(10,0), 
	"Q_NUM" NUMBER(10,0), 
	"QA_TITLE" VARCHAR2(150 BYTE), 
	"QA_CONTENTS" VARCHAR2(2000 BYTE), 
	"QA_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "SHOP"."REVIEW" 
   (	"B_NUM" NUMBER(10,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"TITLE" VARCHAR2(150 BYTE), 
	"B_CONTENTS" VARCHAR2(2000 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"B_DATE" DATE DEFAULT SYSDATE, 
	"HITS" NUMBER(30,0), 
	"FILE_NAME" VARCHAR2(100 BYTE), 
	"ORI_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW_CMT
--------------------------------------------------------

  CREATE TABLE "SHOP"."REVIEW_CMT" 
   (	"C_NUM" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"CONTENT" VARCHAR2(200 BYTE), 
	"B_NUM" NUMBER, 
	"C_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "SHOP"."CUSTOMER" 
   (	"NAME" VARCHAR2(30 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"ADDR" VARCHAR2(150 BYTE), 
	"PHONE" VARCHAR2(15 BYTE), 
	"CUSTID" NUMBER(20,0), 
	"EMAIL" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT" 
   (	"PRODUCT_NUM" NUMBER(30,0), 
	"CATEGORY" VARCHAR2(10 BYTE), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"IMAGE" VARCHAR2(500 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REGDATE" DATE DEFAULT SYSDATE, 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "SHOP"."QNA" 
   (	"Q_NUM" NUMBER(10,0), 
	"CUSTID" NUMBER(10,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"Q_TITLE" VARCHAR2(150 BYTE), 
	"Q_CONTENTS" VARCHAR2(2000 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"Q_DATE" DATE DEFAULT SYSDATE, 
	"Q_HITS" NUMBER(*,0) DEFAULT 1, 
	"Q_PWD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "SHOP"."REVIEW" 
   (	"B_NUM" NUMBER(10,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"TITLE" VARCHAR2(150 BYTE), 
	"B_CONTENTS" VARCHAR2(2000 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"B_DATE" DATE DEFAULT SYSDATE, 
	"HITS" NUMBER(30,0), 
	"FILE_NAME" VARCHAR2(100 BYTE), 
	"ORI_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "SHOP"."ADMIN" 
   (	"AD_ID" VARCHAR2(20 BYTE), 
	"AD_PWD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "SHOP"."CART" 
   (	"C_NUM" NUMBER(10,0), 
	"PRODUCT_NUM" NUMBER(30,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"C_COUNT" NUMBER(10,0), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"IMAGE" VARCHAR2(500 BYTE), 
	"ID" VARCHAR2(20 BYTE), 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table QNA_ANSWER
--------------------------------------------------------

  CREATE TABLE "SHOP"."QNA_ANSWER" 
   (	"QA_NUM" NUMBER(10,0), 
	"Q_NUM" NUMBER(10,0), 
	"QA_TITLE" VARCHAR2(150 BYTE), 
	"QA_CONTENTS" VARCHAR2(2000 BYTE), 
	"QA_DATE" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW_CMT
--------------------------------------------------------

  CREATE TABLE "SHOP"."REVIEW_CMT" 
   (	"C_NUM" NUMBER, 
	"ID" VARCHAR2(30 BYTE), 
	"CONTENT" VARCHAR2(200 BYTE), 
	"B_NUM" NUMBER, 
	"C_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ORDER_LIST
--------------------------------------------------------

  CREATE TABLE "SHOP"."ORDER_LIST" 
   (	"O_NUM" NUMBER(30,0), 
	"PRODUCT_NUM" NUMBER(30,0), 
	"PRODUCT_NAME" VARCHAR2(200 BYTE), 
	"C_COUNT" NUMBER(10,0), 
	"PRICE" NUMBER(20,0), 
	"SALEPRICE" NUMBER(20,0), 
	"O_DATE" DATE DEFAULT SYSDATE, 
	"IMAGE" VARCHAR2(500 BYTE), 
	"PAYMENT" VARCHAR2(15 BYTE) DEFAULT '결제완료', 
	"ID" VARCHAR2(20 BYTE), 
	"RECEIVER" VARCHAR2(30 BYTE), 
	"O_ADDR" VARCHAR2(150 BYTE), 
	"O_PHONE" VARCHAR2(15 BYTE), 
	"MEMO" VARCHAR2(500 BYTE), 
	"O_PAYMENT" VARCHAR2(50 BYTE), 
	"MODEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SHOP.ADMIN
SET DEFINE OFF;
Insert into SHOP.ADMIN (AD_ID,AD_PWD) values ('admin','admin');
REM INSERTING into SHOP.CART
SET DEFINE OFF;
REM INSERTING into SHOP.CUSTOMER
SET DEFINE OFF;
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('홍길동','hong','1234','서울','010-1111-1111',45,'hong@test.com');
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('강감찬','kang','123','대구','010-7777-7777',47,'kang@test.com');
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('회원1','aaa','111','111','111',84,'111');
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('이순신','lee','1111','테스트','010-2222-2222',20,null);
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('회원','ss','111','닝라;ㅁ니','ss',81,'asgas');
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('admin','admin','admin',null,null,1,null);
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('김지우','adafs','111','ffssdfsd','010-2370-9711',83,'sdfsdfsdf');
Insert into SHOP.CUSTOMER (NAME,ID,PWD,ADDR,PHONE,CUSTID,EMAIL) values ('쀕','test','11','tdst','010-0000-0000',86,'test@test.com');
REM INSERTING into SHOP.ORDER_LIST
SET DEFINE OFF;
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (527,5,'레몬케이스',1,12000,0,to_date('22/10/28','RR/MM/DD'),'ac002-2','결제완료','lee','이순신','서울시 강남구 논현동 123-1','010-1111-1111','배송 전 연락주세요.','신용카드','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (532,12,'버터케이스',1,15000,0,to_date('22/10/28','RR/MM/DD'),'ac002-6','결제완료','lee','고구마','광명시','010-1515-1321','요청사항 없음','휴대폰결제','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (533,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','고구마','광명시','010-1515-1321','요청사항 없음','휴대폰결제','iphone12 mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (541,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','고구마','서울시','010-1515-1321','요청사항 없음','신용카드','iphone12proMax');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (541,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','감자칩','서울시','010-1515-1321','요청사항 없음','신용카드','iphone12 mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (541,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','감자칩','서울시','010-1515-1321','요청사항 없음','신용카드','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,7,'도어케이스',1,18000,16000,to_date('22/10/28','RR/MM/DD'),'pc001-4','결제완료','lee','감자칩','서울시','0103232323232','요청사항 없음','신용카드','iphone13/13pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','감자칩','서울시','0103232323232','요청사항 없음','신용카드','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,7,'도어케이스',1,18000,16000,to_date('22/10/28','RR/MM/DD'),'pc001-4','결제완료','lee','고구마','서울시','0103232323232','요청사항 없음','휴대폰결제','iphone13mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (525,17,'에그케이스',4,13000,0,to_date('22/10/28','RR/MM/DD'),'ac002-8','결제완료','lee','이순신','서울시 강남구 논현동 123-1','010-1111-1111','배송 전 연락주세요.','신용카드','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','고구마','서울시','0103232323232','요청사항 없음','휴대폰결제','iphone13mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,8,'와인케이스',1,15000,0,to_date('22/10/28','RR/MM/DD'),'pc001-5','결제완료','lee','감자칩','광명시','010-1515-1321','요청사항 없음','휴대폰결제','iphone12proMax');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,8,'와인케이스',1,15000,0,to_date('22/10/28','RR/MM/DD'),'pc001-5','결제완료','lee','감자칩','광명시','010-1515-1321','요청사항 없음','휴대폰결제','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (524,17,'에그케이스',6,13000,0,to_date('22/10/28','RR/MM/DD'),'ac002-8','결제완료','lee','감자칩','서울시','010-1515-1321','요청사항 없음','휴대폰결제','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (526,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','이순신','서울시 강남구 논현동 123-1','010-1111-1111','배송 전 연락주세요.','신용카드','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','고구마','광명시','0103232323232','요청사항 없음','휴대폰결제','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','고구마','광명시','0103232323232','요청사항 없음','휴대폰결제','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,5,'레몬케이스',1,12000,0,to_date('22/10/28','RR/MM/DD'),'ac002-2','결제완료','lee','감자칩','서울시','010-1515-1321','요청사항 없음','휴대폰결제','airpods pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','감자칩','서울시','010-1515-1321','요청사항 없음','휴대폰결제','iphone13mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,5,'레몬케이스',1,12000,0,to_date('22/10/28','RR/MM/DD'),'ac002-2','결제완료','lee','고구마','서울시','010-1515-1321','요청사항 없음','휴대폰결제','airpods pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,4,'반투명케이스',1,13000,0,to_date('22/10/28','RR/MM/DD'),'ac002-1','결제완료','lee','고구마','서울시','010-1515-1321','요청사항 없음','휴대폰결제','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','감자칩','서울시','0103232323232','요청사항 없음','휴대폰결제','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,4,'반투명케이스',1,13000,0,to_date('22/10/28','RR/MM/DD'),'ac002-1','결제완료','lee','감자칩','서울시','0103232323232','요청사항 없음','휴대폰결제','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,5,'레몬케이스',1,12000,0,to_date('22/10/28','RR/MM/DD'),'ac002-2','결제완료','lee','고구마','서울시','0103232323232','요청사항 없음','신용카드','airpods 3세대');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','고구마','서울시','0103232323232','요청사항 없음','신용카드','iphone12/12pro');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','감자칩','광명시','010-1515-1321','요청사항 없음','신용카드','iphone12proMax');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,1,'사과케이스',1,20000,18000,to_date('22/10/28','RR/MM/DD'),'pc001-1','결제완료','lee','감자칩','광명시','010-1515-1321','요청사항 없음','신용카드','iphone12proMax');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','고구마','서울시','12313131313121','요청사항 없음','휴대폰결제','iphone12 mini');
Insert into SHOP.ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,O_DATE,IMAGE,PAYMENT,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL) values (542,2,'파리케이스',1,19000,0,to_date('22/10/28','RR/MM/DD'),'pc001-2','결제완료','lee','고구마','서울시','12313131313121','요청사항 없음','휴대폰결제','iphone12 mini');
REM INSERTING into SHOP.PRODUCT
SET DEFINE OFF;
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (1,'PC001','사과케이스',20000,18000,'pc001-1','이번 가을에 아주 맛있게 먹은 사과가 너무 귀여워 제작한 케이스입니다.

            | 투명하드케이스 주의사항 |
            - 기종마다 디자인의 크기와 잘림이 다를 수 있으며, 유막현상이 생길 수 있습니다.
            - 13시리즈는 상세페이지 하단에 나온 주의사항을 꼭 참고해주세요!
            - 인쇄방식 특성상 디자인 밑에 하얀부분이 보일수 있습니다. (상세사진 참고하시면 사람쪽으로 하얀부분이 살짝 있어요)
            - 모든 케이스는 규격이 달라 케이스의 형태 및 카메라 구멍을 포함한 부분이 상세사진과 다를 수 있음을 참고해주세요. (카메라쪽으로 1-3mm 여유가 있을 수 있습니다)
            - 모든 케이스는 모니터 해상도에 따라 색상이 다르게 보이며 공장에서도 제작될때마다 미세한 차이가 있습니다. 또한 수평수직이 엇나갈 수 있으니 예민하신 분들께는 추천드리지 않습니다. (2-5mm 오차가능성 있음)
            - 공정상 케이스에 작은 점, 얼룩, 기스, 사출자국이 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.',to_date('22/10/18','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (2,'PC001','파리케이스',19000,0,'pc001-2','파리 도심속 Sign(표지판)들을 그려넣은 디자인입니다.

            | 투명하드케이스 주의사항 |
            - 기종마다 디자인의 크기와 잘림이 다를 수 있으며, 유막현상이 생길 수 있습니다.
            - 13시리즈는 상세 하단에 나온 안내사항을 꼭 확인해주세요!
            - 인쇄방식 특성상 디자인 밑에 하얀부분이 보일수 있습니다. (상세사진 참고하시면 사람쪽으로 하얀부분이 살짝 있어요)
            - 모든 케이스는 규격이 달라 케이스의 형태 및 카메라 구멍을 포함한 부분이 상세사진과 다를 수 있음을 참고해주세요. (카메라쪽으로 1-3mm 여유가 있을 수 있습니다)
            - 모든 케이스는 모니터 해상도에 따라 색상이 다르게 보이며 공장에서도 제작될때마다 미세한 차이가 있습니다. 또한 수평수직이 엇나갈 수 있으니 예민하신 분들께는 추천드리지 않습니다. (2-5mm 오차가능성 있음)
            - 공정상 케이스에 작은 점, 얼룩, 기스, 사출자국이 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.',to_date('22/10/18','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (3,'PC001','파리케이스2',19000,0,'pc001-3','무광재질의 카드케이스입니다.
            하얀배경에 네이비 컬러로 파리 도심속 표지판을 넣은 디자인입니다.

            | 하드케이스 주의사항 |
            - 이 디자인은 수평이 안맞을수 있으며 센터에서 살짝(1-5mm) 엇나가는것은 불량이 아닙니다. 이 부분에 민감하신 분들은 고민해주세요!
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (또한 모니터에 따라 색상이 다르게 보입니다)
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 안쪽(화면쪽)으로 올수록 컬러가 연해지거나 인쇄가 휘는건 불량이 아닙니다. (케이스 특성상 안으로 말릴수밖에 없다고 합니다)
            - 모든 케이스는 케이스 내부에 작은 먼지나 점이 튈 수 있으나 사용하시는데는 문제가 없어 이 부분은 교환/환불 대상이 아닙니다.
            - 무광케이스는 부드럽고 미끄러운 재질이며 위, 아래 보호가 되지 않아 자주 떨어뜨리면 핸드폰에 외상이 생길 수도 있으며, 케이스에 금이 갈 수도 있습니다.',to_date('22/10/18','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (4,'AC002','반투명케이스',13000,0,'ac002-1','무광재질의 카드케이스입니다.

            | AirPods Case Notice |
            - 에어팟케이스 특성상 곡면인쇄라 인쇄부분 글씨가 살짝 휠 수 있으나 이 부분은 불량이 아닙니다! (수직수평 2-4mm오차 있습니다!)
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않으나 유막현상이 있을 수 있으며 이는 불량이 아닙니다.
            - 모든 에어팟젤리케이스는 뚜껑과 바디가 뒷부분에 연결되어있습니다.
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (모니터 해상도나 사양에 따라 색상이 다르게 보일 수 있으니 참고해주세요.)
            - 오래 사용하거나 날카로운곳에 닿게 되면 인쇄가 긁히거나 벗겨질 수 있습니다.
            - 뚜껑이 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다.',to_date('22/10/18','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (5,'AC002','레몬케이스',12000,0,'ac002-2','상큼한 레몬 그래픽이 들어간 반투명케이스 입니다.

            | AirPods Case Notice |
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않습니다.
            - 뚜껑이 헐거워져 열리게 되는건 불량이 아닙니다.
            - 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다.
            - 에어팟케이스는 곡면인쇄로 뚜껑부분의 인쇄가 살짝 휠 수 있습니다. (2-4mm 오차 가능성 있습니다)
            - 뒷부분이나 옆부분에 사출자국이 있을 수 있습니다.',to_date('22/10/18','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (10,'AC002','스티커케이스',12000,0,'ac002-4','스티커 느낌의 디자인이 들어간 에어팟 케이스입니다.

            | AirPods Case Notice |
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않습니다.
            - 뚜껑이 헐거워져 열리게 되는건 불량이 아닙니다.
            - 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다.
            - 1-5mm 정도의 밀림현상은 반품사유가 되지 않습니다!
            - 뒷부분이나 옆부분에 사출자국이 있을 수 있습니다.',to_date('22/10/19','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (16,'AC002','뮤직케이스',13000,0,'ac002-7','하얀바탕에 앞면은 블랙 타이포, 뒷면엔 폴더모양의 디자인이 들어간 에어팟케이스입니다.

            | AirPods Case Notice |
            - 기스가 잘나는 유광소재의 에어팟케이스입니다.
            - 모든 에어팟케이스는 공정상 작은 기스나 점이 생길 수 있으며, 컬러는 제작될때마다 미세하게 차이가 있을수 있습니다.
            - 곡면인쇄로 인쇄의 휨 현상과 디자인이 살짝 삐뚤게 인쇄 될 수 있습니다. (2-4mm 오차 가능성있습니다)
            - 케이스는 총 4피스의 단면을 결합하는 방식으로 윗부분에 살짝 오차가 있을 수 있습니다.
            (에어팟이 들어가는데는 전혀 문제가 없습니다)
            - 하드케이스는 결합되는 부분에 인쇄가 살짝 연할 수 있습니다. ',to_date('22/10/20','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (6,'AC002','그린케이스',15000,0,'ac002-3','뮤직박스의 유광하드케이스 버전입니다.

            | AirPods Case Notice |
            - 기스가 잘나는 유광소재의 에어팟케이스입니다.
            - 모든 에어팟케이스는 공정상 작은 기스나 점이 생길 수 있으며, 컬러는 제작될때마다 미세하게 다를 수 있습니다.
            - 곡면인쇄로 인쇄의 휨 현상과 디자인이 살짝 삐뚤게 인쇄 될 수 있습니다. (2-4mm 오차 가능성있습니다)
            - 케이스는 총 4피스의 단면을 결합하는 방식으로 윗부분에 살짝 오차가 있을 수 있습니다.
            (에어팟이 들어가는데는 전혀 문제가 없습니다)
            - 하드케이스는 결합되는 부분에 인쇄가 살짝 연할 수 있습니다.',to_date('22/10/18','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (7,'PC001','도어케이스',18000,16000,'pc001-4','사진으로 제작된 무광케이스입니다.
            푸른빛의 문이 시원해보여 여름과 특히 잘어울리는 케이스입니다.

            | 하드케이스 주의사항 |
            - 이 디자인은 수평이 안맞을수 있으며 센터에서 살짝(1-5mm) 엇나가는것은 불량이 아닙니다. 이 부분에 민감하신 분들은 고민해주세요!
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (또한 모니터에 따라 색상이 다르게 보입니다)
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 안쪽(화면쪽)으로 올수록 컬러가 연해지거나 인쇄가 휘는건 불량이 아닙니다. (케이스 특성상 안으로 말릴수밖에 없다고 합니다)
            - 모든 케이스는 케이스 내부에 작은 먼지나 점이 튈 수 있으나 사용하시는데는 문제가 없어 이 부분은 교환/환불 대상이 아닙니다.
            - 무광케이스는 부드럽고 미끄러운 재질이며 위, 아래 보호가 되지 않아 자주 떨어뜨리면 핸드폰에 외상이 생길 수도 있으며, 케이스에 금이 갈 수도 있습니다.
            - 기종에 따라 카메라 렌즈와 이어폰 단자와 충전 단자의 구멍 위치가 다르며, 레이아웃이 위 사진들과 다르게 잘릴수도 있습니다.',to_date('22/10/19','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (8,'PC001','와인케이스',15000,0,'pc001-5','와인잔에 와인을 따르는 모습을 담은 투명젤하드 케이스입니다
.

            | 젤리케이스 주의사항 |
            - 젤리케이스는 사용하다보면 흰색 얼룩이 올수도 있고 젤리가 노랗게 변합니다. 이는 불량이 아닙니다.
            - 카메라 구멍 크기에 따라 디자인이 조금 잘릴 수 있습니다.
            - 모든 젤리케이스는 규격이 달라 케이스의 형태 및 카메라 구멍을 포함한 부분이 상세사진과 다를 수 있음을 참고해주세요. (카메라쪽으로 1-3mm 여유가 있을 수 있습니다)
            - 젤리케이스 특성상 볼륨키 부분이 살짝 늘어날수도 있으며 사출자국이 보일 수 있습니다! (사용하는데에 큰 지장은 없으나 이 부분에 민감하신 분들은 충분히 고민 후 구매해주세요)
            - 센터가 살짝 엇나가는것은 불량이 아닙니다. 센터에 민감하신 분들은 고민해주세요!
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 인쇄시 디자인 밑에 화이트로 겹친듯이 보이는 부분은 업체측에서도 불량으로 인정하지 않아 불량 사유가 될 수 없어 환불이 어렵습니다. (작은 부분에서 두드러지게 보입니다. 예민하신 분들은 신중한 구매 부탁드려요!)',to_date('22/10/19','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (9,'PC001','버터케이스',20000,0,'pc001-6','버터의 부드러운 색감이 느껴지는 버터케이스입니다.

            | 하드케이스 주의사항 |
            - 이 디자인은 수평이 안맞을수 있으며 센터에서 살짝(1-5mm) 엇나가는것은 불량이 아닙니다. 이 부분에 민감하신 분들은 고민해주세요!
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (또한 모니터에 따라 색상이 다르게 보입니다)
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 안쪽(화면쪽)으로 올수록 컬러가 연해지거나 인쇄가 휘는건 불량이 아닙니다. (케이스 특성상 안으로 말릴수밖에 없다고 합니다)
            - 모든 케이스는 케이스 내부에 작은 먼지나 점이 튈 수 있으나 사용하시는데는 문제가 없어 이 부분은 교환/환불 대상이 아닙니다.
            - 무광케이스는 부드럽고 미끄러운 재질이며 위, 아래 보호가 되지 않아 자주 떨어뜨리면 핸드폰에 외상이 생길 수도 있으며, 케이스에 금이 갈 수도 있습니다.
            - 기종에 따라 카메라 렌즈와 이어폰 단자와 충전 단자의 구멍 위치가 달라, 레이아웃이 위 사진들과 다르게 잘릴수도 있습니다.',to_date('22/10/19','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (11,'AC002','체리케이스',12000,0,'ac002-5','붉은 체리가 들어간 반투명 젤리케이스입니다.

            | AirPods Case Notice |
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않습니다.
            - 뚜껑이 헐거워져 열리게 되는건 불량이 아닙니다.
            - 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다. (반투명케이스에서 점이 유난히 잘보이니 예민하신 분들은 신중한 구매 부탁드려요)
            - 에어팟케이스는 곡면인쇄로 뚜껑부분의 인쇄가 살짝 휠 수 있습니다. (2-4mm 오차 가능성 있습니다)
            - 뒷부분이나 옆부분에 사출자국이 있을 수 있습니다.',to_date('22/10/19','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (12,'AC002','버터케이스',15000,0,'ac002-6','버터색상의 배경에 블루 컬러의 타이포가 어우러지는 귀여운 에어팟케이스입니다.

            | AirPods Case Notice |
            - 맨들맨들한 무광소재의 에어팟케이스입니다.
            - 모든 에어팟케이스는 공정상 작은 기스나 점이 생길 수 있습니다.
            - 곡면인쇄로 인쇄의 휨 현상과 디자인이 살짝 삐뚤게 인쇄 될 수 있습니다. (2-4mm 오차 가능성있습니다)
            - 케이스는 총 4피스의 단면을 결합하는 방식으로 윗부분에 살짝 오차가 있을 수 있습니다.
            (에어팟이 들어가는데는 전혀 문제가 없습니다)
            - 하드케이스는 결합되는 부분에 인쇄가 살짝 연할 수 있습니다.',to_date('22/10/19','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (13,'PC001','쿨케이스',18000,0,'pc001-7','시원한 레몬색감의 타이포가 있는 젤리케이스입니다.

            | 젤리케이스 주의사항 |
            - 젤리케이스는 사용하다보면 흰색 얼룩이 올수도 있고 젤리가 노랗게 변합니다. 이는 불량이 아닙니다.
            - 카메라 구멍 크기에 따라 디자인이 조금 잘릴 수 있습니다.
            - 모든 케이스는 제작될때마다 색상 차가 있습니다. (모니터와 실제색이 조금 다를 수 있습니다)
            - 모든 케이스는 규격이 달라 케이스의 형태 및 카메라 구멍을 포함한 부분이 상세사진과 다를 수 있음을 참고해주세요. (카메라쪽으로 1-3mm 여유가 있을 수 있습니다)
            - 젤리케이스 특성상 볼륨키 부분이 살짝 늘어날수 있으며 사출자국이 있습니다/ (사용하는데에 지장은 없으나 이 부분에 민감하신 분들은 충분히 고민 후 구매해주세요)
            - 센터가 살짝 엇나가는것은 불량이 아닙니다. 센터에 민감하신 분들은 고민해주세요!
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다. (종종 노란 점이 보이는데 이 부분은 공장에서 불량이라고 인정해주지 않아 교환/환불이 어렵습니다)
            - 인쇄시 디자인 밑에 화이트로 겹친듯이 보이는 부분은 업체측에서도 불량으로 인정하지 않아 불량 사유가 될 수 없어 환불이 어렵습니다. (작은 부분에서 두드러지게 보입니다. 예민하신 분들은 신중한 구매 부탁드려요!)',to_date('22/10/20','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (14,'PC001','메론케이스',25000,23000,'pc001-8','채도가 낮은 메론컬러의 바탕에 새하얀 화이트 타이포로 봄에 잘어울리는 디자인의 무광하드케이스입니다.

            | 하드케이스 주의사항 |
            - 이 디자인은 수평이 안맞을수 있으며 센터에서 살짝(1-5mm) 엇나가는것은 불량이 아닙니다. 이 부분에 민감하신 분들은 고민해주세요!
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (또한 모니터에 따라 색상이 다르게 보입니다)
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 안쪽(화면쪽)으로 올수록 컬러가 연해지거나 인쇄가 휘는건 불량이 아닙니다. (케이스 특성상 안으로 말릴수밖에 없다고 합니다)
            - (모든 케이스는 케이스 내부에 작은 먼지나 점이 튈 수 있으나 사용하시는데는 전혀 보이지 않고 문제가 없어 이 부분은 교환/환불 대상이 아닙니다)
            - 무광케이스는 부드럽고 미끄러운 재질이며 위, 아래 보호가 되지 않아 자주 떨어뜨리면 핸드폰에 외상이 생길 수도 있으며, 케이스에 금이 갈 수도 있습니다.
            - 기종에 따라 카메라 렌즈와 이어폰 단자와 충전 단자의 구멍 위치가 달라, 레이아웃이 위 사진들과 다르게 잘릴수도 있습니다.',to_date('22/10/20','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (15,'PC001','바닐라케이스',25000,23000,'pc001-9','라벤더 컬러의 바탕에 크림컬러의 타이포로, 바닐라 아이스크림이라는 글자가 반복되는 패턴의 케이스입니다.

            | 하드케이스 주의사항 |
            - 수평이 안맞을수 있으며 센터에서 살짝(1-5mm) 엇나가는것은 불량이 아닙니다. 이 부분에 민감하신 분들은 고민해주세요!
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (모니터에 따라 색상이 다르게 보입니다)
            - 작은 점이나 얼룩 그리고 기스는 공정상 생길 수 있으니 예민하신 분들은 신중한 구매 부탁드립니다.
            - 안쪽(화면쪽)으로 올수록 컬러가 연해지거나 인쇄가 휘는건 불량이 아닙니다. (케이스 특성상 안으로 말릴수밖에 없다고 합니다)
            - (모든 케이스는 케이스 내부에 작은 먼지나 점이 튈 수 있으나 사용하시는데는 전혀 보이지 않고 문제가 없어 이 부분은 교환/환불 대상이 아닙니다)
            - 무광케이스는 부드럽고 미끄러운 재질이며 위, 아래 보호가 되지 않아 자주 떨어뜨리면 핸드폰에 외상이 생길 수도 있으며, 케이스에 금이 갈 수도 있습니다.
            - 기종에 따라 카메라 렌즈와 이어폰 단자와 충전 단자의 구멍 위치가 달라, 레이아웃이 위 사진들과 다르게 잘릴수도 있습니다.',to_date('22/10/20','RR/MM/DD'),'IPHONE');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (17,'AC002','에그케이스',13000,0,'ac002-8','젤리 에어팟케이스입니다.

            | AirPods Case Notice |
            - 에어팟케이스 특성상 곡면인쇄라 인쇄부분 글씨가 살짝 휠 수 있으나 이 부분은 불량이 아닙니다! (2-4mm오차 있습니다!)
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않습니다.
            - 모든 에어팟젤리케이스는 뚜껑과 바디가 뒷부분에 연결되어있습니다.
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (모니터 해상도나 사양에 따라 색상이 다르게 보일 수 있으니 참고해주세요.)
            - 오래 사용하거나 날카로운곳에 닿게 되면 인쇄가 긁히거나 벗겨질 수 있습니다.
            - 뚜껑이 헐거워져 열리게 되는건 불량이 아닙니다.
            - 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다. (반투명케이스에서 점이 유난히 잘보이니 예민하신 분들은 신중한 구매 부탁드려요)',to_date('22/10/20','RR/MM/DD'),'AIRPODS');
Insert into SHOP.PRODUCT (PRODUCT_NUM,CATEGORY,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE,CONTENT,REGDATE,MODEL) values (18,'AC002','에그케이스2',13000,0,'ac002-9','젤리 에어팟케이스입니다.

            | AirPods Case Notice |
            - 에어팟케이스 특성상 곡면인쇄라 인쇄부분 글씨가 살짝 휠 수 있으나 이 부분은 불량이 아닙니다! (2-4mm오차 있습니다!)
            - 부드러운 고무재질(TPU)의 케이스로 먼지가 잘 달라붙지 않습니다.
            - 모든 에어팟젤리케이스는 뚜껑과 바디가 뒷부분에 연결되어있습니다.
            - 컬러는 나올때마다 미세하게 다를 수 있습니다. (모니터 해상도나 사양에 따라 색상이 다르게 보일 수 있으니 참고해주세요.)
            - 오래 사용하거나 날카로운곳에 닿게 되면 인쇄가 긁히거나 벗겨질 수 있습니다.
            - 뚜껑이 헐거워져 열리게 되는건 불량이 아닙니다.
            - 완전히 닫히지 않고 살짝 에어팟의 하얀 뚜껑 부분이 보이는건 불량이 아닙니다.
            - 공정상 작은 점이나 작은 스크래치가 생길 수 있습니다. (반투명케이스에서 점이 유난히 잘보이니 예민하신 분들은 신중한 구매 부탁드려요)',to_date('22/10/20','RR/MM/DD'),'AIRPODS');
REM INSERTING into SHOP.QNA
SET DEFINE OFF;
Insert into SHOP.QNA (Q_NUM,CUSTID,PRODUCT_NAME,Q_TITLE,Q_CONTENTS,ID,Q_DATE,Q_HITS,Q_PWD) values (13,1,'레몬케이스','asdfeee','sdfasdfeee','hong',to_date('22/10/20','RR/MM/DD'),47,'3333');
Insert into SHOP.QNA (Q_NUM,CUSTID,PRODUCT_NAME,Q_TITLE,Q_CONTENTS,ID,Q_DATE,Q_HITS,Q_PWD) values (14,1,null,'우하하하하','ㅠㅠㅠㅠㅠ','hong',to_date('22/10/20','RR/MM/DD'),39,'2222');
Insert into SHOP.QNA (Q_NUM,CUSTID,PRODUCT_NAME,Q_TITLE,Q_CONTENTS,ID,Q_DATE,Q_HITS,Q_PWD) values (15,1,'파리케이스','페이지 호ㅓㅏㄱ인~','확인확인확인확인확인확인','hong',to_date('22/10/20','RR/MM/DD'),111,'3333');
REM INSERTING into SHOP.QNA_ANSWER
SET DEFINE OFF;
Insert into SHOP.QNA_ANSWER (QA_NUM,Q_NUM,QA_TITLE,QA_CONTENTS,QA_DATE) values (96,13,'ㄴ 안녕하세요. 문의하신 내용 답변드립니다.','sdadf',to_date('22/10/30','RR/MM/DD'));
Insert into SHOP.QNA_ANSWER (QA_NUM,Q_NUM,QA_TITLE,QA_CONTENTS,QA_DATE) values (94,14,'ㄴ 안녕하세요. 문의하신 내용 답변드립니다.','dfs',to_date('22/10/30','RR/MM/DD'));
REM INSERTING into SHOP.REVIEW
SET DEFINE OFF;
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (5,'IPHONE 파리케이스','아이폰 케이스 존귀..','넘 힙하고 기여워요~!~!~!ㅁㅇㅁㄴㅇ','hong',to_date('22/10/26','RR/MM/DD'),112,null,null);
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (13,'AIRPODS	에그케이스','에어팟 케이스 후기','사진 잘 올라가나요','lee',to_date('22/10/26','RR/MM/DD'),130,'ac002-1','ac002-1');
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (6,'IPHONE 파리케이스','페이지확인~~','ㄴㅁㅇㅇㄻ','hong',to_date('22/10/26','RR/MM/DD'),29,null,null);
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (7,'IPHONE 파리케이스','ㅁㄴㅇㄻㄴㅇㄹ','ㄴㅁㅇㄻㄴㅇ','hong',to_date('22/10/26','RR/MM/DD'),20,null,null);
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (11,'IPHONE	사과케이스','잘받았어요','굿굿굿','lee',to_date('22/10/26','RR/MM/DD'),42,'coffee','coffee');
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (14,'IPHONE 스티커케이스','aaa','aaaaaa','aaa',to_date('22/10/27','RR/MM/DD'),86,null,null);
Insert into SHOP.REVIEW (B_NUM,PRODUCT_NAME,TITLE,B_CONTENTS,ID,B_DATE,HITS,FILE_NAME,ORI_NAME) values (41,'airpods 3세대 버터케이스','sdfa','adf','lee',to_date('22/10/30','RR/MM/DD'),26,'ac002-21','ac002-21');
REM INSERTING into SHOP.REVIEW_CMT
SET DEFINE OFF;
Insert into SHOP.REVIEW_CMT (C_NUM,ID,CONTENT,B_NUM,C_DATE) values (76,'admin','후기 감사합니다~!',13,to_date('22/10/27','RR/MM/DD'));
Insert into SHOP.REVIEW_CMT (C_NUM,ID,CONTENT,B_NUM,C_DATE) values (77,'admin','적립금 드려요',13,to_date('22/10/27','RR/MM/DD'));
Insert into SHOP.REVIEW_CMT (C_NUM,ID,CONTENT,B_NUM,C_DATE) values (86,'admin','aaa',14,to_date('22/10/28','RR/MM/DD'));
Insert into SHOP.REVIEW_CMT (C_NUM,ID,CONTENT,B_NUM,C_DATE) values (158,'admin','dfadsfadf',41,to_date('22/10/30','RR/MM/DD'));
Insert into SHOP.REVIEW_CMT (C_NUM,ID,CONTENT,B_NUM,C_DATE) values (159,'hong','ddddd',41,to_date('22/10/30','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index FK_C_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."FK_C_NUM" ON "SHOP"."REVIEW_CMT" ("C_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PK_ID" ON "SHOP"."CUSTOMER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007139
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007139" ON "SHOP"."PRODUCT" ("PRODUCT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007150
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007150" ON "SHOP"."CART" ("C_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007170
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007170" ON "SHOP"."ADMIN" ("AD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007199
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007199" ON "SHOP"."QNA" ("Q_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007207
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007207" ON "SHOP"."REVIEW" ("B_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007218
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007218" ON "SHOP"."QNA_ANSWER" ("QA_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007170
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007170" ON "SHOP"."ADMIN" ("AD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007150
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007150" ON "SHOP"."CART" ("C_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PK_ID" ON "SHOP"."CUSTOMER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007139
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007139" ON "SHOP"."PRODUCT" ("PRODUCT_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007199
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007199" ON "SHOP"."QNA" ("Q_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007218
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007218" ON "SHOP"."QNA_ANSWER" ("QA_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007207
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007207" ON "SHOP"."REVIEW" ("B_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index FK_C_NUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."FK_C_NUM" ON "SHOP"."REVIEW_CMT" ("C_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure C_O_ADD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."C_O_ADD" (
 
 OC_NUM IN NUMBER

) AS
 CPRODUCT_NUM ORDER_LIST.PRODUCT_NUM%TYPE;
 CID ORDER_LIST.ID%TYPE;
 CPRODUCT_NAME ORDER_LIST.PRODUCT_NAME%TYPE;
 CC_COUNT ORDER_LIST.C_COUNT%TYPE;
 CPRICE ORDER_LIST.PRICE%TYPE;
 CSALEPRICE ORDER_LIST.SALEPRICE%TYPE;
 CSMALL_IMAGE ORDER_LIST.IMAGE%TYPE;
 CMODEL ORDER_LIST.MODEL%TYPE;
BEGIN

    SELECT PRODUCT_NUM,ID,PRODUCT_NAME,MODEL,C_COUNT,PRICE,SALEPRICE,IMAGE
    INTO CPRODUCT_NUM,CID,CPRODUCT_NAME,CMODEL,CC_COUNT,CPRICE,CSALEPRICE,CSMALL_IMAGE
    FROM ORDER_LIST
    WHERE O_NUM = OC_NUM;


    INSERT INTO CART (C_NUM,PRODUCT_NUM,ID,PRODUCT_NAME,MODEL,C_COUNT,PRICE,SALEPRICE,IMAGE)
    VALUES (SEQ_CART.NEXTVAL,CPRODUCT_NUM,CID,CPRODUCT_NAME,CMODEL,CC_COUNT,CPRICE,CSALEPRICE,CSMALL_IMAGE);


END C_O_ADD;


/
--------------------------------------------------------
--  DDL for Procedure O_C_ADD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."O_C_ADD" (
    OC_NUM IN NUMBER,
    DNAME IN VARCHAR2,
    DADRESS IN VARCHAR2,
    DPHONENUM IN VARCHAR2,
    DMEMO IN VARCHAR2,
    DPAYMENT IN VARCHAR2,
    OSEQUENCE IN NUMBER

) AS
 OPRODUCT_NUM CART.PRODUCT_NUM%TYPE;
 OID CART.ID%TYPE;
 OPRODUCT_NAME CART.PRODUCT_NAME%TYPE;
 OC_COUNT CART.C_COUNT%TYPE;
 OPRICE CART.PRICE%TYPE;
 OSALEPRICE CART.SALEPRICE%TYPE;
 O_DATE DATE;
 OSMALL_IMAGE CART.IMAGE%TYPE;
 OPAYMENT VARCHAR2(5);
 DO_NUM ORDER_LIST.O_NUM%TYPE;
 OMODEL CART.MODEL%TYPE;
BEGIN

    SELECT PRODUCT_NUM,MODEL,C_COUNT,PRICE,SALEPRICE,PRODUCT_NAME,IMAGE
    INTO OPRODUCT_NUM,OMODEL,OC_COUNT,OPRICE,OSALEPRICE,OPRODUCT_NAME,OSMALL_IMAGE
    FROM CART
    WHERE C_NUM = OC_NUM;

    SELECT ID
    INTO OID
    FROM CART
    WHERE C_NUM = OC_NUM;

    INSERT INTO ORDER_LIST (O_NUM,PRODUCT_NUM,PRODUCT_NAME,MODEL,C_COUNT,PRICE,SALEPRICE,IMAGE,ID,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT)
    VALUES (OSEQUENCE,OPRODUCT_NUM,OPRODUCT_NAME,OMODEL, OC_COUNT,OPRICE,OSALEPRICE,OSMALL_IMAGE,OID, DNAME,DADRESS,DPHONENUM,DMEMO,DPAYMENT);


    DELETE FROM CART WHERE C_NUM = OC_NUM;


END O_C_ADD;


/
--------------------------------------------------------
--  DDL for Procedure O_O_ADD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."O_O_ADD" ( 

    OO_NUM IN NUMBER,
    DNAME IN VARCHAR2,
    DADRESS IN VARCHAR2,
    DPHONENUM IN VARCHAR2,
    DMEMO IN VARCHAR2,
    DPAYMENT IN VARCHAR2
) AS
 CPRODUCT_NUM ORDER_LIST.PRODUCT_NUM%TYPE;
 CID ORDER_LIST.ID%TYPE;
 CPRODUCT_NAME ORDER_LIST.PRODUCT_NAME%TYPE;
 CC_COUNT ORDER_LIST.C_COUNT%TYPE;
 CPRICE ORDER_LIST.PRICE%TYPE;
 CSALEPRICE ORDER_LIST.SALEPRICE%TYPE;
 CSMALL_IMAGE ORDER_LIST.IMAGE%TYPE;
 CMODEL ORDER_LIST.MODEL%TYPE;   
BEGIN

    SELECT PRODUCT_NUM,ID,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,IMAGE,MODEL
    INTO CPRODUCT_NUM,CID,CPRODUCT_NAME,CC_COUNT,CPRICE,CSALEPRICE,CSMALL_IMAGE,CMODEL
    FROM ORDER_LIST
    WHERE O_NUM = OO_NUM;


    INSERT INTO ORDER_LIST (O_NUM,PRODUCT_NUM,ID,PRODUCT_NAME,C_COUNT,PRICE,SALEPRICE,IMAGE,RECEIVER,O_ADDR,O_PHONE,MEMO,O_PAYMENT,MODEL)
    VALUES (SEQ_ONUM.NEXTVAL,CPRODUCT_NUM,CID,CPRODUCT_NAME,CC_COUNT,CPRICE,CSALEPRICE,CSMALL_IMAGE,DNAME,DADRESS,DPHONENUM,DMEMO,DPAYMENT,CMODEL);

END O_O_ADD;


/
--------------------------------------------------------
--  DDL for Procedure P_C_ADD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."P_C_ADD" (
 P_NUM IN NUMBER,
 P_ID IN VARCHAR2, 
 P_COUNT IN NUMBER,
P_MODEL IN VARCHAR2
) AS
 PPRODUCT_NUM PRODUCT.PRODUCT_NUM%TYPE;
 PPRODUCT_NAME PRODUCT.PRODUCT_NAME%TYPE;
 PPRICE PRODUCT.PRICE%TYPE;
 PSALEPRICE PRODUCT.SALEPRICE%TYPE;
 PIMAGE PRODUCT.IMAGE%TYPE;


BEGIN

    SELECT PRODUCT_NUM,PRODUCT_NAME,PRICE,SALEPRICE,IMAGE
    INTO PPRODUCT_NUM,PPRODUCT_NAME,PPRICE,PSALEPRICE,PIMAGE
    FROM PRODUCT
    WHERE PRODUCT_NUM = P_NUM;


    INSERT INTO CART (C_NUM,PRODUCT_NUM,ID,PRODUCT_NAME,MODEL,C_COUNT,PRICE,SALEPRICE,IMAGE)
    VALUES (SEQ_CART.NEXTVAL,PPRODUCT_NUM,P_ID,PPRODUCT_NAME,P_MODEL,P_COUNT,PPRICE,PSALEPRICE,PIMAGE);


END P_C_ADD;


/
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "SHOP"."ADMIN" MODIFY ("AD_PWD" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ADMIN" ADD PRIMARY KEY ("AD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "SHOP"."CART" MODIFY ("PRODUCT_NUM" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CART" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CART" MODIFY ("C_COUNT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CART" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CART" MODIFY ("SALEPRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CART" ADD PRIMARY KEY ("C_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SHOP"."CART" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "SHOP"."CUSTOMER" ADD CONSTRAINT "PK_ID" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SHOP"."CUSTOMER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CUSTOMER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CUSTOMER" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."CUSTOMER" MODIFY ("CUSTID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORDER_LIST
--------------------------------------------------------

  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("PRODUCT_NUM" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("C_COUNT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("O_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."ORDER_LIST" MODIFY ("PAYMENT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" ADD PRIMARY KEY ("PRODUCT_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "SHOP"."QNA" MODIFY ("CUSTID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("Q_CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("Q_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" ADD PRIMARY KEY ("Q_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_ANSWER
--------------------------------------------------------

  ALTER TABLE "SHOP"."QNA_ANSWER" MODIFY ("Q_NUM" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA_ANSWER" MODIFY ("QA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA_ANSWER" MODIFY ("QA_CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA_ANSWER" ADD PRIMARY KEY ("QA_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "SHOP"."REVIEW" MODIFY ("PRODUCT_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("B_CONTENTS" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("B_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("HITS" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" ADD PRIMARY KEY ("B_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW_CMT
--------------------------------------------------------

  ALTER TABLE "SHOP"."REVIEW_CMT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW_CMT" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW_CMT" MODIFY ("B_NUM" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW_CMT" MODIFY ("C_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW_CMT" MODIFY ("C_NUM" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW_CMT" ADD CONSTRAINT "FK_C_NUM" PRIMARY KEY ("C_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "SHOP"."CART" ADD CONSTRAINT "FK_ID" FOREIGN KEY ("ID")
	  REFERENCES "SHOP"."CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SHOP"."CART" ADD CONSTRAINT "FK_PRODUCTNUM" FOREIGN KEY ("PRODUCT_NUM")
	  REFERENCES "SHOP"."PRODUCT" ("PRODUCT_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_LIST
--------------------------------------------------------

  ALTER TABLE "SHOP"."ORDER_LIST" ADD CONSTRAINT "FK_OID" FOREIGN KEY ("ID")
	  REFERENCES "SHOP"."CUSTOMER" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "SHOP"."ORDER_LIST" ADD CONSTRAINT "FK_P_PRODUCT" FOREIGN KEY ("PRODUCT_NUM")
	  REFERENCES "SHOP"."PRODUCT" ("PRODUCT_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_ANSWER
--------------------------------------------------------

  ALTER TABLE "SHOP"."QNA_ANSWER" ADD CONSTRAINT "FK_Q_NUM" FOREIGN KEY ("Q_NUM")
	  REFERENCES "SHOP"."QNA" ("Q_NUM") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW_CMT
--------------------------------------------------------

  ALTER TABLE "SHOP"."REVIEW_CMT" ADD FOREIGN KEY ("B_NUM")
	  REFERENCES "SHOP"."REVIEW" ("B_NUM") ON DELETE CASCADE ENABLE;
