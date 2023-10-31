# Spring DI
## Spring Framework
### 특징
- POJO(Plain Old Java Object) 방식의 프레임워크
- 의존성 주입(Dependency Injection)을 통한 객체관계 구성
- 관점지향 프로그래밍 (AOP, Aspect Oriented Programming)
- 제어 역전(IoC, Inversion of Control)
- 높은 확정성, 다양한 라이브러리

<!-- https://download.springsource.com/release/STS/3.9.13.RELEASE/dist/e4.15/spring-tool-suite-3.9.13.RELEASE-e4.15.0-win32-x86_64.zip -->

## 의존관계역전
```java
// 느슨한 결합을 위한 인터페이스 -> 타입 의존성 제거
public interface Computer {
	String getInfo();
}
```
```java
public class Desktop implements Computer{
	// 필드 (생략)
	public String getInfo() {
		return "데스크톱";
	}
}
```
```java
public class Laptop implements Computer {
	// 필드 (생략)
	public String getInfo() {
		return "노트북";
	}
}
```
```java
public class Programmer {
	// 프로그래머는 컴퓨터가 있음
	private Computer computer;
	
	// 객체 생성 의존성 제거 - new로 만들지 않고 넣어준다
	public Programmer(Computer computer) {
//		computer = new Desktop();	// 객체 생성 의존
		this.computer = computer;
	}
	
	public void coding() {
		System.out.println(computer.getInfo() + "으로 개발한다.");
	}
}
```
```java
public class test {
	public static void main(String[] args) {
		Desktop computer = new Desktop();
		Laptop computer2 = new Laptop();
		Programmer p = new Programmer(computer);	// 제어의 역전
		Programmer p2 = new Programmer(computer2);	// 제어의 역전
		p.coding();
		p2.coding();
	}
}
```

## 의존성 주입
### 생성자를 이용한 의존성 주입
```java
public class Programmer {
	private Desktop computer;
	
    // 생성자를 이용한 의존성 주입
	public Programmer(Computer computer) {
		this.computer = computer;
	}
	
	public void coding() {
		System.out.println(computer.getInfo() + "으로 개발한다.");
	}
}
```

### Factory
```java
public class ComputerFactory {
	public static Computer getComputer(String type) {
		if(type.equals("D"))
			return new Desktop();
		else if(type.equals("L"))
			return new Laptop();
		return null;
	}
}
```
```java
public class test {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Programmer p = new Programmer();
		
//		p.setComputer(ComputerFactory.getComputer("D"));
//		p.coding();
//		p.setComputer(ComputerFactory.getComputer("L"));
//		p.coding();
		
		while(true) {
			p.setComputer(ComputerFactory.getComputer(sc.next()));
			p.coding();
		}
	}
}
```