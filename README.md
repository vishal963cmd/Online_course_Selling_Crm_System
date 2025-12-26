A CRM-based web application for managing online course operations.
The system allows Admins, Employees, and Users to interact with courses, manage users, and handle enrollments in a secure and structured way.
Project Overview

The Online Course Selling CRM System is designed to simplify course management for educational platforms.
It provides role-based access, secure authentication, and centralized CRM functionalities for managing courses and users.

This project is developed using Spring Boot with a MySQL database and follows a layered MVC architecture.
Key Features
👤 User Features

User registration and login

Browse available courses

View course details (subject, trainer, price)

Enroll in courses

Secure authentication and authorization

🧑‍💼 Admin Features

Admin login

Add, update, and delete courses

Add and manage employees

View all users and course enrollments

👨‍💻 Employee Features

Employee login

Manage courses (add/update/remove)

Assist in user and enrollment management

🛠️ Tech Stack
Backend

Java

Spring Boot

Spring MVC

Spring Security

JPA / Hibernate

Frontend

HTML

CSS

JavaScript

Database

MySQL

Build Tool

Maven

🔐 Security Features

Role-Based Authentication (Admin / Employee / User)

Secure login using Spring Security

Authorization using roles and permissions

Session management and access control

🗂️ Project Architecture
Controller Layer
│
Service Layer
│
Repository Layer
│
Database (MySQL)


Follows MVC architecture

Clean separation of concerns

Scalable and maintainable design

⚙️ Installation & Setup
1️⃣ Clone the Repository
git clone https://github.com/vishal963cmd/online-course-crm.git
cd online-course-crm

2️⃣ Configure Database

Update application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/online_course_crm
spring.datasource.username=root
spring.datasource.password=*******

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

3️⃣ Run the Application
mvn spring-boot:run


Application will run at:

http://localhost:8080
