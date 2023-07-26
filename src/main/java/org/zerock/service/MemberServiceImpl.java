package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.MemberVO;
import org.zerock.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@AllArgsConstructor
@Service
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	@Override
	public void insert(MemberVO member) {
		log.info("회원등록 처리 테스트 == > 누가 등록햇나? " +member);
		mapper.insert(member);
	}

	@Override
	public int idCheck(String id) {
		int cnt = mapper.idCheck(id);
		log.info("cnt : "+cnt);
		return cnt;
	}

	@Override
	public int loginCheck(MemberVO member) {

		int logincnt = mapper.loginCheck(member);
		log.info("logcnt : "+logincnt);
		return logincnt;
	}

}
