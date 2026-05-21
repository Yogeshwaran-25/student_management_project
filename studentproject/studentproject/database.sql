CREATE DATABASE IF NOT EXISTS studentdb;
USE studentdb;

CREATE TABLE schoolapp_student (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
email VARCHAR(100) UNIQUE,
password VARCHAR(100),
course VARCHAR(100)
);

CREATE TABLE schoolapp_staff (
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
email VARCHAR(100) UNIQUE,
password VARCHAR(100),
subject VARCHAR(100)
);

CREATE TABLE schoolapp_attendance (
id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
date DATE,
status VARCHAR(20),
FOREIGN KEY(student_id) REFERENCES schoolapp_student(id)
);

INSERT INTO schoolapp_student(name,email,password,course)
VALUES ('Arun','arun@gmail.com','123','CSE');

INSERT INTO schoolapp_staff(name,email,password,subject)
VALUES ('Kumar','kumar@gmail.com','123','Python');
