<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int dan = Integer.parseInt( request.getParameter("dan"));
%>

<!DOCTYPE html>
<html>
	<!-- <!DOCTYPE html> 위 <> 안 % 사이에 들어가는 내용은 반드시 첫 번째 줄부터 두어야 한다.-->
	<!-- jsp 파일은 결국 calss파일(servlet)로 변환된다. 이클립스에서 자동 변환, 컴파일 후 사용 -->
	<!-- servlet으로 작성하기 난해한 코드의 경우 자바 코드로 처리할 수 있도록 자동 변환 기능 탑재. 편의를 위한 문법 혼용. -->
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<!-- html 문법과 jsp 문법 섞어 쓰기 -->
		<!-- 아직 dan 값을 정해주지 않았기 때문에 완성되지 않은 페이지. 사용자가 dan을 정해줘야 한다. 동적인 페이지. -->
		<table border="1">
			<%
				for(int i=1; i<=9; i++){
			%>
				<tr>
					<td><%=dan%></td>
					<td><%=i%></td>
					<td><%=dan*i%></td>
				</tr>
			<%
				}
			%>
		</table>
		
	</body>
</html>