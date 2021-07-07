<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="com.ict.edu.Hello"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ApplicationContext : 자바에서 사용하는 스프링 컨테이너 -->
	<%--
		사용 가능한 방법이지만 사용하지 않음
		
		ApplicationContext context = new ClassPathXmlApplicationContext("com/ict/edu/config.xml");

		Hello hello = (Hello) context.getBean("hello");
		String msg = hello.sayHell
		o();
		// System.out.println(msg);
		out.println("<h2>" + msg + "</h2>");
		
	--%>
	
	<%-- Web에서 DI 사용하는 방법 --%>
	<%--
		1. 설정 정보인 config.xml은 applicationContext.xml로 변경
		   위치와 이름 변경된다. (위치와 이름을 마음대로 변경할 수 없다. => MVC에서는 변경 가능)
		   Web-INF안에 applicationContext.xml로 만들자
		   
		2. applicationContext.xml을 읽기 위해서 리스너를 만들어야 한다.
		   리스너는 프로젝트 당 하나만 있으면 된다.
		   만드는 방법은 2가지이다.
		   1) 자바에서 만드는 방법(리스너)
		   2) web.xml에서 만드는 방법
	 --%>
	 
	 <!-- WebApplicationContext : 웹에서 사용하는 스프링 컨테이너 -->
	 <%
	 	WebApplicationContext context = 
	 		WebApplicationContextUtils.getWebApplicationContext(application); 
	 
	 	Hello hello = (Hello)context.getBean("hello");
	 	String msg = hello.sayHello();
	 	out.println("<h2>" + msg + "</h2>");
	 %>
</body>
</html>