package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.PaymentVo;
import org.zerock.service.PaymentService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class PaymentController {
	
	@Autowired
	private PaymentService paymentService;
	
	@RequestMapping(value = "/paymentProcess.do")
	public void paymentDone(@RequestBody PaymentVo vo) {
		paymentService.insertPaymentSuccess(vo);
	}
	
	@RequestMapping(value = "/paymentProcess.do2")
	public void paymentDone2(@RequestBody PaymentVo vo) {
		paymentService.insertPaymentSuccess2(vo);
	}
	
	@RequestMapping(value = "/paymentProcess.do3")
	public void paymentDone3(@RequestBody PaymentVo vo) {
		paymentService.insertPaymentSuccess3(vo);
	}
	
	@RequestMapping(value= "/paymentDone")
	public ModelAndView fwdPaymentSuccessPage() {
		ModelAndView view = new ModelAndView("/payment/AfterPay");
		view.addObject("price", 60000);
	   	view.addObject("name", "동물의 숲 - 코코아");
		return view;
	}
	
	
	@RequestMapping(value= "/paymentDone2")
	public ModelAndView fwdPaymentSuccessPage2() {
		ModelAndView view = new ModelAndView("/payment/AfterPay2");
		view.addObject("price", 25000);
	   	view.addObject("name", "동물의 숲 쿠션 - 콩돌이 밤돌이");
		return view;
	}
	
	
	@RequestMapping(value= "/paymentDone3")
	public ModelAndView fwdPaymentSuccessPage3() {
		ModelAndView view = new ModelAndView("/payment/AfterPay3");
		view.addObject("price", 20000);
	   	view.addObject("name", "동물의 숲 - TPU 세미 하드케이스");
		return view;
	}
	
	   @RequestMapping(value = "/notice")
	   public ModelAndView goNotice() {
		   return new ModelAndView("/payment/notice");
	   }
	   
	   
	   @RequestMapping(value = "/qna")
	   public ModelAndView goQna() {
		   return new ModelAndView("/payment/qna");
	   }
	   
	
	   	   

	   
}
