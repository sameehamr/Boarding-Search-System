CREATE TABLE BSS.user (
userId int NOT NULL AUTO_INCREMENT,
user_role varchar(255) NOT NULL,
user_name varchar(255) NOT NULL,
user_password varchar(255) NOT NULL,
contact_no varchar(255) NOT NULL,
address varchar(255),
PRIMARY KEY (userId)
);

CREATE TABLE BSS.Property (
propertyId int NOT NULL AUTO INCREMENT,
room_type varchar(255) NOT NULL,
rental decimal NOT NULL,
gender_of_tenant char NOT NULL,
location varchar(255) NOT NULL,
facilities varchar(255),
userId int, 
PRIMARY KEY (propertyId),
FOREIGN KEY (userId) REFERENCES user(userId)
);
