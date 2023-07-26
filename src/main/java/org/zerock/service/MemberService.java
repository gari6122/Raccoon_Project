package org.zerock.service;

import org.zerock.domain.MemberVO;


public interface MemberService {

	public void insert(MemberVO member);
	
	public int idCheck(String id);
	
	public int loginCheck(MemberVO member);

	
}
