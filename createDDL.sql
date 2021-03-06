CREATE TABLE users (username VARCHAR(255) NOT NULL, email_address VARCHAR(255) NOT NULL, groupname VARCHAR(255) NOT NULL, id INTEGER, password VARCHAR(255) NOT NULL, PRIMARY KEY (username))
CREATE TABLE advertisements (id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, date VARCHAR(20) NOT NULL, description VARCHAR(8000) NOT NULL, price VARCHAR(40) NOT NULL, status INTEGER, title VARCHAR(100) NOT NULL, ADVERTISER_username VARCHAR(255), PRIMARY KEY (id))
ALTER TABLE users ADD CONSTRAINT UNQ_users_0 UNIQUE (id)
ALTER TABLE advertisements ADD CONSTRAINT dvrtsmntDVRTSRsrnm FOREIGN KEY (ADVERTISER_username) REFERENCES users (username)
CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(15), PRIMARY KEY (SEQ_NAME))
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0)
