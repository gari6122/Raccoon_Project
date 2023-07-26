package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {

	// 기존 게시글에 댓글을 추가하는 insert() 메서드 선언
	public int insert(ReplyVO vo); 
	
	// 특정 댓글의 내용을 읽어주는 read() 메서드 선언
	public ReplyVO read(Long rno); 

	// 특정 댓글의 내용을 삭제 처리하는 delete() 메서드 선언
	public int delete(Long rno);
	
	// 특정 댓글의 내용을 수정 처리하는 update() 메서드 선언
	public int update(ReplyVO reply);
	
	public List<ReplyVO> getListWithPaging(
			@Param("cri") Criteria cri,
			@Param("bno") Long bno);

	public int getCountByBno(Long bno);
}

