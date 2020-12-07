--------------------------------------------------------
--  File created - понедельник-марта-18-2019   
--------------------------------------------------------
REM INSERTING into C##TEST_USER."auto"
SET DEFINE OFF;
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('81','M123EO','red','ford','50');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('82','M547PB','black','gazel','50');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('83','Р487СТ','gray','mercedes','50');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('84','Т789УХ','black','ford','46');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('85','Т134HO','white','ford','46');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('86','М348НО','red','mercedes','48');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('87','B555EK','purple','ford','48');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('88','А398КМ','black','gazel','47');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('89','М467РС','black','gazel','47');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('90','С509ВЕ','black','ford','47');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('91','Е497КО','white','mersedes','49');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('92','С576ВЕ','red','mercedes','49');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('93','О754РС','gray','mercedes','49');
Insert into C##TEST_USER."auto" (AUTO_ID,"num",COLOR,BRAND,AUTO_PERSONNEL_ID) values ('94','С123ВР','black','ford','49');
REM INSERTING into C##TEST_USER.AUTO_PERSONNEL
SET DEFINE OFF;
Insert into C##TEST_USER.AUTO_PERSONNEL (AUTO_PERSONNEL_ID,FIRST_NAME,LAST_NAME,PATHER_NAME) values ('46','Иван','Иванов','Львович');
Insert into C##TEST_USER.AUTO_PERSONNEL (AUTO_PERSONNEL_ID,FIRST_NAME,LAST_NAME,PATHER_NAME) values ('47','Иван','Лебедев','Олегович');
Insert into C##TEST_USER.AUTO_PERSONNEL (AUTO_PERSONNEL_ID,FIRST_NAME,LAST_NAME,PATHER_NAME) values ('48','Игорь','Сменов','Игоривич');
Insert into C##TEST_USER.AUTO_PERSONNEL (AUTO_PERSONNEL_ID,FIRST_NAME,LAST_NAME,PATHER_NAME) values ('49','Иван','Иванов','Ильич');
Insert into C##TEST_USER.AUTO_PERSONNEL (AUTO_PERSONNEL_ID,FIRST_NAME,LAST_NAME,PATHER_NAME) values ('50','Виктория','Павлова','Ивановна');
REM INSERTING into C##TEST_USER.JOURNAL
SET DEFINE OFF;
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('121',to_timestamp('18.03.19 06:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 07:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'81','1');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('122',to_timestamp('18.03.19 06:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 08:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'84','1');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('123',to_timestamp('18.03.19 06:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 10:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'87','2');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('124',to_timestamp('18.03.19 07:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 10:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'90','3');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('125',to_timestamp('18.03.19 07:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 11:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'93','4');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('126',to_timestamp('18.03.19 07:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 12:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'82','5');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('142',to_timestamp('18.03.19 10:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),null,'86','7');
Insert into C##TEST_USER.JOURNAL (JOURNAL_ID,TIME_OUT,TIME_IN,AUTO_ID,ROUTES_ID) values ('141',to_timestamp('18.03.19 08:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('18.03.19 12:00:00,000000000','DD.MM.RR HH24:MI:SSXFF'),'85','6');
REM INSERTING into C##TEST_USER.ROUTES
SET DEFINE OFF;
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('1','Лесная');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('2','Пушкинская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('3','Нарвская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('4','Маяковская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('5','Ломоновская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('6','Рыбацкое');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('7','Достоевская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('8','Ладожская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('9','Садовая');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('21','Спортивная');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('22','Чкаловская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('23','Невский');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('24','Петроградская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('25','Парнас');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('26','Звенигородская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('27','Волковская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('28','Бухарестская');
Insert into C##TEST_USER.ROUTES (ROUTES_ID,"name") values ('29','Международная');
