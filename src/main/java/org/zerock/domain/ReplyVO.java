package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyVO {

	private Long rno;  // 댓글 등록 번호 rno 필드
	private Long bno;  // 게시글 등록 번호 bno 필드
	private String reply;   // 댓글 내용 reply 필드
	private String replyer; // 댓글 작성자 replyer 필드
	private Date replyDate; // 댓글 등록일 replyDate 필드
	private Date updateDate; // 댓글 갱신일 updateDate 필드
	
}
