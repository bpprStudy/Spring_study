package com.ssafy.di1;

public class Programmer {
	// 프로그래머는 컴퓨터가 있음
	private Desktop computer;
	
	public Programmer() {
		computer = new Desktop();	// 객체 생성 의존
	}
	
	public void coding() {
		System.out.println(computer.getInfo() + "으로 개발한다.");
	}
}
