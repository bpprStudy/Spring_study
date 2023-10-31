package com.ssafy.di;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class Test {
	public static void main(String[] args) {

		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		Programmer p = (Programmer) context.getBean("programmer");
		
		Desktop desktop = context.getBean("desktop", Desktop.class);
		
//		p.setComputer(desktop);
//		
//		p.coding();
		
		Desktop d1 = (Desktop) context.getBean("desktop");
		Desktop d2 = (Desktop) context.getBean("desktop");
		
		System.out.println(d1 == d2); // 싱글턴 scope="singleton"이 기본, scope="prototype"은 새로 생성

	}

}
