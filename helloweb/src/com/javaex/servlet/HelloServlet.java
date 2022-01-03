package com.javaex.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/HelloServlet")//:주소 자리(변경 가능)
public class HelloServlet extends HttpServlet {//class와 같다(이름 첫 글자:대문자)
	//필드
	private static final long serialVersionUID = 1L;//생략 가능한 필드
   
	//생성자 - 생략(기본 생성자 사용)

    //메소드 getter/setter
    
    //일반 메소드: 보통 doGet이나 doPost 둘 중 한 가지 연결 방식을 선택한다.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//코드 작성
		response.setContentType("text/html;charset=utf-8");//한글이 깨지지 않게 포맷 지정 코드 추가
		
		PrintWriter out = response.getWriter();
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("	<head>");
		out.println("		<meta charset=\"UTF-8\">");
		out.println("		<title>Insert title here</title>");
		out.println("	</head>");
		out.println("	<body>");
		out.println("		<h1>helloworld.jsp HERO! 나의 영웅 </h1>");
		out.println("	</body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
