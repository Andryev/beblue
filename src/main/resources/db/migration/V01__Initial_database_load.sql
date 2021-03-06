-- Created by Andryev Lemes
CREATE SCHEMA IF NOT EXISTS BEBLUE;

CREATE SEQUENCE BEBLUE.B_ALBUM_ID_ALBUM_SEQ;

CREATE TABLE BEBLUE.B_ALBUM (
                ID_ALBUM INTEGER NOT NULL DEFAULT nextval('BEBLUE.B_ALBUM_ID_ALBUM_SEQ'),
                NAME VARCHAR(150) NOT NULL,
                ID_SPOTIFY VARCHAR(100) NOT NULL,
                ARTIST_NAME VARCHAR(150) NOT NULL,
                GENRE VARCHAR(7) NOT NULL,
                VALUE DECIMAL (9, 2) NOT NULL,
                CONSTRAINT ID_ALBUM_CONSTRAINT PRIMARY KEY (ID_ALBUM)
);

ALTER SEQUENCE BEBLUE.B_ALBUM_ID_ALBUM_SEQ OWNED BY BEBLUE.B_ALBUM.ID_ALBUM;

CREATE SEQUENCE BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ;

CREATE TABLE BEBLUE.B_CASHBACK (
                ID_CASHBACK INTEGER NOT NULL DEFAULT nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'),
                DAY_OF_WEEK VARCHAR(9) NOT NULL,
                GENRE VARCHAR(7) NOT NULL,
                CASHBACK_VALUE DECIMAL(9,2) NOT NULL,
                CONSTRAINT ID_CASHBACK_CONSTRAINT PRIMARY KEY (ID_CASHBACK)
);


ALTER SEQUENCE BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ OWNED BY BEBLUE.B_CASHBACK.ID_CASHBACK;

INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SUNDAY', 'POP', 25.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'MONDAY', 'POP', 7.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'TUESDAY', 'POP', 6.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'WEDNESDAY', 'POP', 2.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'THURSDAY', 'POP', 10.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'FRIDAY', 'POP', 15.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SATURDAY', 'POP', 20.00);

INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SUNDAY', 'MPB', 30.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'MONDAY', 'MPB', 5.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'TUESDAY', 'MPB', 10.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'WEDNESDAY', 'MPB', 15.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'THURSDAY', 'MPB', 20.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'FRIDAY', 'MPB', 25.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SATURDAY', 'MPB', 30.00);

INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SUNDAY', 'CLASSIC', 35.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'MONDAY', 'CLASSIC', 3.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'TUESDAY', 'CLASSIC', 5.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'WEDNESDAY', 'CLASSIC', 8.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'THURSDAY', 'CLASSIC', 13.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'FRIDAY', 'CLASSIC', 18.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SATURDAY', 'CLASSIC', 25.00);

INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SUNDAY', 'ROCK', 40.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'MONDAY', 'ROCK', 10.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'TUESDAY', 'ROCK', 15.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'WEDNESDAY', 'ROCK', 15.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'THURSDAY', 'ROCK', 15.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'FRIDAY', 'ROCK', 20.00);
INSERT INTO BEBLUE.B_CASHBACK (ID_CASHBACK, DAY_OF_WEEK, GENRE, CASHBACK_VALUE) VALUES (nextval('BEBLUE.B_CASHBACK_ID_CASHBACK_SEQ'), 'SATURDAY', 'ROCK', 40.00);

CREATE SEQUENCE BEBLUE.B_SALE_ID_SALE_SEQ;

CREATE TABLE BEBLUE.B_SALE (
                ID_SALE INTEGER NOT NULL DEFAULT nextval('BEBLUE.B_SALE_ID_SALE_SEQ'),
                CASHBACK_VALUE NUMERIC(9,2) NOT NULL,
                SALE_DATE TIMESTAMP WITHOUT TIME ZONE NOT NULL,
                SALE_VALUE NUMERIC(9,2) NOT NULL,
                CONSTRAINT ID_SALE_CONSTRAINT PRIMARY KEY (ID_SALE)
);

ALTER SEQUENCE BEBLUE.B_SALE_ID_SALE_SEQ OWNED BY BEBLUE.B_SALE.ID_SALE;

CREATE SEQUENCE BEBLUE.B_ITEM_SALE_ID_ITEM_SALE_SEQ;

CREATE TABLE BEBLUE.B_ITEM_SALE (
                ID_ITEM_SALE INTEGER NOT NULL DEFAULT nextval('BEBLUE.B_ITEM_SALE_ID_ITEM_SALE_SEQ'),
                ID_ALBUM INTEGER NOT NULL,
                ALBUM_VALUE NUMERIC(9,2) NOT NULL,
                CASHBACK_VALUE NUMERIC(9,2) NOT NULL,
                ID_SALE INTEGER NOT NULL,
                AMOUNT INTEGER NOT NULL,
                CONSTRAINT ID_ITEM_SALE_CONSTRAINT PRIMARY KEY (ID_ITEM_SALE)
);

ALTER SEQUENCE BEBLUE.B_ITEM_SALE_ID_ITEM_SALE_SEQ OWNED BY BEBLUE.B_ITEM_SALE.ID_ITEM_SALE;

ALTER TABLE BEBLUE.B_ITEM_SALE ADD CONSTRAINT B_ALBUM_B_ITEM_SALE_FK
FOREIGN KEY (ID_ALBUM)
REFERENCES BEBLUE.B_ALBUM (ID_ALBUM)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE BEBLUE.B_ITEM_SALE ADD CONSTRAINT B_SALE_B_ITEM_SALE_FK
FOREIGN KEY (ID_SALE)
REFERENCES BEBLUE.B_SALE (ID_SALE)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;