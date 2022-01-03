<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	int dan = Integer.parseInt( request.getParameter("dan"));
%>

<!DOCTYPE html>
<html>
	<!-- <!DOCTYPE html> 위 <> 안 % 사이에 들어가는 내용은 반드시 첫 번째 줄부터 두어야 한다.-->
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<!-- html 문법과 jsp 문법 섞어 쓰기 -->
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