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
		Programmer p = new Programmer(computer2);	// 제어의 역전
		p.coding();
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

## Spring Container Build
### Spring IoC Container
- 스프링에서 핵심적인 역할을 하는 객체를 Bean이라고 하며,
- Container는 Bean의 인스턴스화 조립, 관리의 역할, 사용 소멸에 대한 처리를 담당한다.

### Spring Container 빌드
- Project를 Maven Project로 변경
- pom.xml -> Spring Context 의존성 추가
```xml
<!-- pom.xml -->

	<dependencies>
		<!-- https://mvnrepository.com/artifact/org.springframework/spring-context -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-context</artifactId>
			<version>5.3.18</version>
		</dependency>
	</dependencies>
```
- Source Folder 생성 (resources)
- 스프링 설정 파일(Spring Bean Configuration File) 생성 (applicationContext)
- Bean 등록 (플패키지 명 작성)
```xml
<!-- resources/applicationContext.xml -->

	<!-- 기본 생성자를 통해서 미리 Container에 객체를 만들어서 올려둔다.  -->
	<bean class="com.ssafy.di.Desktop" id="desktop" ></bean>
	<bean class="com.ssafy.di.Programmer" id="programmer"></bean>
```
- 스프링 컨테이너를 이용하여 객체 가져오기
```java
public class Test {
	public static void main(String[] args) {

		ApplicationContext context = new GenericXmlApplicationContext("applicationContext.xml");

		Programmer p = (Programmer) context.getBean("programmer");
		
		Desktop desktop = context.getBean("desktop", Desktop.class);
		
		p.setComputer(desktop);
		
		p.coding();
	}
}
```

### getBean()으로 여러 객체 가져오기
```java
Desktop d1 = (Desktop) context.getBean("desktop");
Desktop d2 = (Desktop) context.getBean("desktop");

System.out.println(d1 == d2); // true (Bean Scope의 default가 singletone이어서)
```
```xml
<!-- resources/applicationContext.xml -->

	<!-- scope를 변경 -->
	<bean class="com.ssafy.di.Desktop" id="desktop" scope="prototype"></bean>
```
```java
Desktop d1 = (Desktop) context.getBean("desktop");
Desktop d2 = (Desktop) context.getBean("desktop");

System.out.println(d1 == d2); // false
```


### Bean Scope
- Bean Scope를 통해 객체 범위를 제어할 수 있다.
<br>

|Scope|설명|
|:--:|:--:|
|singleton|`기본값`, Spring IoC 컨테이너에 대한 단일 객체 인스턴스|
|prototype|빈을 요청할 때마다 새로운 인스턴스 생성|
|request|HTTP Request 주기로 bean 인스턴스 생성|
|session|HTTP Session 주기로 bean 인스턴스 생성|
