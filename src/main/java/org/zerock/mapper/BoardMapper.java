package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
		
		public List<BoardVO> getList();
		
		public List<BoardVO> getListWithPaging(Criteria cri);
		
		public void insert(BoardVO board);
		
		public void insertSelectKey(BoardVO board);
		
		public BoardVO read(long bno);
		
		public int delete(long bno);
		
		public int update(BoardVO board);
		
		public int getTotalCount(Criteria cri);
		
		public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
		
	}
