package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.MemberVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	
	@Test
	public void testInsert() {
		MemberVO member = new MemberVO();
		member.setUserId("test5");
		member.setUserPw("1234");
		member.setUserName("테스트");
		member.setUserAdd("테스트동");
		member.setUserBirth(19600101);
		
		mapper.insert(member);
		log.info(member);
	}
	
	//@Test
	public void testRead() {
		
		int cnt=mapper.idCheck("test");
		log.info("cnt값은"+cnt);
	}
	
	@Test
	public void testLogin() {
		MemberVO member = new MemberVO();
		member.setUserId("test");
		member.setUserPw("1234");
		
		int test = mapper.loginCheck(member);
		log.info("아이디와 비번이 맞나요? 맞으면 1, 틀리면 0 = "+test);
	}
}

