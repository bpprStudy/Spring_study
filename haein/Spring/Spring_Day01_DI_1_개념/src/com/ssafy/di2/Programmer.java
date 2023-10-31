package com.ssafy.di2;

public class Programmer {
	// 프로그래머는 컴퓨터가 있음
	private Desktop computer;
	
	// 객체 생성 의존성 제거 - new로 만들지 않고 넣어준다
	public Programmer(Desktop computer) {
//		computer = new Desktop();	// 객체 생성 의존
		this.computer = computer;
	}
	
	public void coding() {
		System.out.println(computer.getInfo() + "으로 개발한다.");
	}
}
