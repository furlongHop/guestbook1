package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo;

public class TestDao {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList.toString());

		//자바 1.8 버전 늘 확인하기
		//공식 문서 단계(request,response)를 건너뛰고 자바 내부에서 테스트할 예정이므로 꼭 java application으로 실행하기
		//이클립스 jdbc 설정> 프로젝트 properties>java build path>libraries(tap)>add external jars>ojdbc6.jar 선택
		
		/* jsp 파일에서 주의할 점
		 <% %>: 자바 문법임을 알려주는 기호
		 <%= %>: 자바 문법 안에 들어있는 '값' 알려주는 기호
		 */
	}

}
