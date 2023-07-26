package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService service;
	
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		log.info("list 처리가 이루어집니다!" + cri);
		model.addAttribute("list", service.getList(cri));
		
		
		int total = service.getTotal(cri);
		log.info("전체 데이터 수량 = " + total);
		model.addAttribute("pageMaker", new PageDTO(cri, total));		
	}	
	
	@GetMapping("/register")
	public void register() {
		
	}	
	
	@PostMapping("/register") 
	public String register(BoardVO board, RedirectAttributes rttr) {
		log.info("글등록 처리를 합니다!" + board);
		service.register(board);
		
		rttr.addFlashAttribute("result", board.getBno());		
		
		return "redirect:/board/list";		
	}	
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("/get or modify");
		model.addAttribute("board", service.get(bno));
	}

	@PostMapping("/modify")
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("글수정 처리가 되었습니다! ==> " + board);
		
		if(service.modify(board)) {
			rttr.addFlashAttribute("result", "success");
		}
	
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}
	

	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("crl") Criteria cri, RedirectAttributes rttr) {
		log.info("글 삭제 처리가 되었다 ->" + bno );
		
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/board/list";
	}	
}






