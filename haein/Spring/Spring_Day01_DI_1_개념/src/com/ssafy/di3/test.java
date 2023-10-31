package com.ssafy.di3;

public class test {
	public static void main(String[] args) {
		
		Desktop computer = new Desktop();
		Laptop computer2 = new Laptop();
		Programmer p = new Programmer(computer);	// 제어의 역전
		Programmer p2 = new Programmer(computer2);	// 제어의 역전
		p.coding();
		p2.coding();
		
		p.setComputer(computer);
		p.coding();
	}
	
}
