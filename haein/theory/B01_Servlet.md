# Web-BackEnd-01
## 웹프로그래밍
- URL(Uniform Resource Locator) - 웹 상의 자원을 참조하기 위한 웹 주소
- 웹 페이지(Web page) - 웹 브라우저를 통해서 보여지는 화면
- 웹 서버(Web Server) - 클라이언트 요청에 맞는 응답(웹 페이지)을 제공
- 웹 어플리케이션(Web Application) - 웹 서버를 기반으로 실행되는 응용 소프트웨어
- 웹 어플리케이션 서버(Web Application Server, WAS) - 요청이 오면 알맞은 프로그램을 실행하여 응답을 만들고 제공하는 서버

### Dynamic Web Project
- Java Resources
    - Java관련 Resource
- WebContent
    - html, javascript, JSP, Image 등 웹 컨텐츠

## Servlet
- Server + Applet의 합성어
- 자바를 이용하여 웹에서 실행되는 프로그램을 작성하는 기술
- 자바를 이용하여 웹페이지를 동적으로 생성할 수 있음
- Servlet은 자바 코드안에 HTML을 포함

### Servlet Life-Cycle
- 서블릿 인스턴스는 서블릿이 포함된 웹컨테이너에 의해 제어된다.
    1. 서블릿클래스 로드
    2. 서블릿 클래스 인스턴스 생성
    3. 서블릿 인스턴스 초기화
    4. 웹 컨테이너에 의한 서비스 메서드 호출
    5. destroy 메서드를 호출하여 서블릿 종료
- 서블릿 메서드는 요청이 들어올 때 마다 호출된다.

## Servlet Parameter
### GET / POST