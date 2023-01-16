<%@page import="com.wonniego.bean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="student2" class="com.wonniego.bean.Student" scope = "page"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Student student1 = new Student();
	student1.setName("홍길동");
	student1.setAge(23);
	student1.setGrade(3);
	student1.setStudentNumber(202312345);
	
	


%>
	<jsp:setProperty property="name" name="student2" value="김유신"/>
	<jsp:setProperty property="age" name="student2" value="17"/>
	<jsp:setProperty property="grade" name="student2" value="4"/>
	<jsp:setProperty property="studentNumber" name="student2" value="20191234"/>

	학생의 이름(java) : <%= student1.getName() %><br>
	학생의 이름(bean) : <jsp:getProperty property="name" name="student2"/>

</body>
</html>