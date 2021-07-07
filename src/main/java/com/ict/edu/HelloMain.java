package com.ict.edu;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class HelloMain {
	public static void main(String[] args) {
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("com/ict/edu/config.xml");
		
		Hello hello = (Hello)context.getBean("hello");
		String msg = hello.sayHello();
		System.out.println(msg);
	}
}
