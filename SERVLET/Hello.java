package day0512;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//1. 내가만든 클래스가 웹 서비스가 되어야하기 때문에 HttpServlet을 상속받는다.
@SuppressWarnings("serial")
public class Hello extends HttpServlet {
 
    //2. 클라이언트가 요청하는 방식을 처리할 수 있는 method를 Override 한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//3. 접속자에게 응답해줄 파일을 생성할 수 있도록 설정한다. (MIME-Type의 설정)
		response.setContentType("text/html;charset=UTF-8"); //이름이없는 파일의 CHARSET을 설정할 수 있다.
		//4. 응답해줄 내용을 접속자에게 보낼 수 있도록 접속자에게 출력할 수 있는 스트림 얻는다.
		PrintWriter out = response.getWriter();
		//5. 접속자에게 보내는 내용을 스트림에 작성
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset = 'UTF-8'>");
		out.println("<title>안녕 Servlet</title> ");
		out.println("</head>");
		out.println("<body>");
		out.println("<strong>안녕하세요</strong><br/>");
		out.println("오늘은 2021-05-12일 수요일<br/>");
		out.println("</body>");
		out.println("</html>");
	}

}
