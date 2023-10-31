package com.ssafy.di2;

public class test {
	public static void main(String[] args) {
		
		Desktop computer = new Desktop();
		Programmer p = new Programmer(computer);	// 제어의 역전
		p.coding();
	}
	
}
