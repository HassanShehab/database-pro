CREATE DATABASE collage;
CREATE TABLE student(
    id int AUTO_INCREMENT,
    name_ar text,
    name_eng varchar(100),
    social_ID bigint(20),
    image text ,
    shoaba varchar(10) ,
    schoolType varchar(15) ,
    schoolName text ,
    student_phone varchar(11) ,
    address text,
    region varchar(100),
    mail varchar (150),
    father_phone varchar(11),
    fristLanguage varchar(10),
    total float,
    eng1 float,
    finalTotal float,
    reg_data datetime,
    password varchar(30),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);
CREATE TABLE pre_decision(
    id int AUTO_INCREMENT,
    student_ID int ,
    FOREIGN KEY (student_ID) REFERENCES student(id),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);
CREATE TABLE student_requrements(
    id int AUTO_INCREMENT,
    student_ID int ,
    FOREIGN KEY (student_ID) REFERENCES student(id),
    raghpa_1 int(11),
    raghpa_2 int(11),
    raghpa_3 int(11),
    PRIMARY KEY (id)
);
CREATE TABLE programs(
    id int AUTO_INCREMENT,
    program text,
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);
CREATE TABLE final_decision(
    id int AUTO_INCREMENT,
    pre_decision_ID int ,
    FOREIGN KEY (pre_decision_ID) REFERENCES pre_decision(id),
    program_ID int ,
    FOREIGN KEY (program_ID) REFERENCES programs(id),
    notes varchar(100),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);
CREATE TABLE questions(
    id int(11) AUTO_INCREMENT,
    question varchar(250),
    answer text ,
    student_ID int ,
    FOREIGN KEY (student_ID) REFERENCES student(id),
    public int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);
CREATE TABLE users(
    id bigint(20) AUTO_INCREMENT,
    name varchar(225),
    email varchar(225),
    role int(11) ,
    email_varified_at timestamp,
    password varchar(225),
    rememder_token varchar(100),
    theem int(11),
    created_at timestamp,
    updated_at timestamp,
    PRIMARY KEY (id)
);