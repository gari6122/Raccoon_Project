package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private String userId;
	private String userPw;
	private String userName;
	private String userAdd;
	private int userBirth;

	private int idCheck;
	
	private Date regDate;
}
