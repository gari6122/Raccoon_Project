package org.zerock.mapper;

import org.zerock.domain.MemberVO;

public interface MemberMapper{

	public void insert(MemberVO member);
	
	public int idCheck(String id);
	
	public int loginCheck(MemberVO member);
	
}
