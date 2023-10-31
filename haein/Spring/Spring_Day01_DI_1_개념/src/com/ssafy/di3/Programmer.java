package com.ssafy.di3;

public class Programmer {
	// 프로그래머는 컴퓨터가 있음
	private Computer computer;
	
	// 객체 생성 의존성 제거 - new로 만들지 않고 넣어준다
	public Programmer(Computer computer) {
//		computer = new Desktop();	// 객체 생성 의존
		this.computer = computer;
	}
	
	// 설정자(setter) 주입
	// 필드 이름에 set을 붙이고 첫 글자를 대분자로 바꾼 형태
	public void setComputer(Computer computer) {
		this.computer = computer;
	}
	
	public void coding() {
		System.out.println(computer.getInfo() + "으로 개발한다.");
	}
}
