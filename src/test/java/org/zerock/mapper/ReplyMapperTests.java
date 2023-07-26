package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = {3L};
	
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
//	@Test
//	public void testCreate() {
//		IntStream.rangeClosed(1, 10).forEach(i -> {
//			ReplyVO vo = new ReplyVO();
//			
//			// 게시물의 번호
//			vo.setBno(bnoArr[i % 5]);
//			vo.setReply("댓글 테스트 " + i);
//			vo.setReplyer("replyer" + i);
//			
//			mapper.insert(vo);			
//		});
//	}
	
//	@Test
//	public void testMapper() {
//		log.info(mapper);
//	}
	
//	@Test
//	public void testRead() {
//		Long targetRno = 4L;
//		ReplyVO vo = mapper.read(targetRno);
//		log.info(vo);
//	}	
	
//	@Test
//	public void testDelete() {
//		Long targetRno = 11L;
//		mapper.delete(targetRno);
//		log.info(targetRno);
//	}
	
	@Test
	public void testUpdate() {
		Long targetRno = 4L;
		ReplyVO vo = mapper.read(targetRno);
		vo.setReply("오늘은 즐거운 금요일입니다~!");
		vo.setReplyer("코끼링");
		int count = mapper.update(vo);
		log.info("수정 처리가 된 데이터 수량 = " + count);
	}
	
	/*
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		// bnoArr[0] = 1638664L
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		replies.forEach(reply -> log.info(reply));
	}
	*/
	
//	@Test
//	public void testList2() {
//		// 2page에 10개 데이터 log info 레벨 화면 출력
//		Criteria cri = new Criteria(2, 10); 
//		
//		// 페이징 확인을 위해 댓글이 20개 이상 있는
//		// bno 게시글 번호를 하나 준비합니다. 1638659L
//		List<ReplyVO> replies = mapper.getListWithPaging(cri, 1638659L);
//		
//		replies.forEach(reply -> log.info(reply));
//	}
}



