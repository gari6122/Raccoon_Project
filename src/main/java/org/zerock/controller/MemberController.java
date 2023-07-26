package org.zerock.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@AllArgsConstructor
@RequestMapping("/user/*")
@Log4j

public class MemberController {

	private MemberService service;
	
	@GetMapping("/join")
	public void join() {
		log.info("여기는 회원가입 페이지");
	}
	
	@PostMapping("/join")
	public String join(MemberVO member) {
		log.info("이 회원의 등록 처리를 함 => "+ member);
		service.insert(member);
		log.info("회원어쩌고");
		
		return "/user/login";
	}
	
	@RequestMapping("/idCheck")
	@ResponseBody
	public Map<Object, Object>idcheck(@RequestBody String userid){
		int cnt = 0;
		Map<Object, Object> map = new HashMap<Object, Object>();
		cnt = service.idCheck(userid);
		map.put("cnt", cnt);
		
		return map;
	}
			
	@GetMapping("/login")
	public void login() {
		log.info("여기는 로그인 페이지");
		
	}
	
	@RequestMapping("/loginCheck")
	@ResponseBody
	public Map<Object,Object> loginCheck(@RequestBody MemberVO member){

		int logincnt = 0;
		Map<Object,Object> map = new HashMap<Object, Object>();
		logincnt = service.loginCheck(member);
		map.put("logincnt", logincnt);
		
		return map;
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess(){
		return "user/loginSuccess";
		
	}

	
}
