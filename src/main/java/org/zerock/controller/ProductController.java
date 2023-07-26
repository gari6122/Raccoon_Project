package org.zerock.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.zerock.domain.ProductVO;
import org.zerock.service.PaymentService;
import org.zerock.service.ProductService;



import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {
	ModelAndView model = new ModelAndView();
	
	@Autowired
	private ProductService service;
	
	
	@GetMapping("/getAList")
	public ModelAndView getAList(ProductVO vo) {
	    List<ProductVO> productAList = service.getAList(vo);
	    List<Map<String, Object>> resultA = new ArrayList<>();

	    for (ProductVO product : productAList) {
	        Map<String, Object> map = new HashMap<>();
	        map.put("productCode", product.getProductCode());
	        map.put("productName", product.getProductName());
	        map.put("productAPrice", product.getProductAPrice());
	        resultA.add(map);
	    }

	    ModelAndView modelAndView = new ModelAndView("product/getAList");
	    modelAndView.addObject("resultA", resultA);
	    log.info("아미보카드 상품리스트 목록 조회  " + modelAndView);
	    return modelAndView;
	}
	
	@GetMapping("/getGList")
	public ModelAndView getGList(ProductVO vo) {
	    List<ProductVO> productGList = service.getGList(vo);
	    List<Map<String, Object>> resultG = new ArrayList<>();

	    for (ProductVO product : productGList) {
	        Map<String, Object> map = new HashMap<>();
	        map.put("productCode", product.getProductCode());
	        map.put("productName", product.getProductName());
	        map.put("productGPrice", product.getProductGPrice());
	        resultG.add(map);
	    }

	    ModelAndView modelAndView = new ModelAndView("product/getGList");
	    modelAndView.addObject("resultG", resultG);
	    log.info("굿즈상품리스트 목록 조회  " + modelAndView);
	    return modelAndView;
	}
	
	

	@GetMapping("/getNList")
	public ModelAndView getNList(ProductVO vo) {
	    List<ProductVO> productNList = service.getNList(vo);
	    List<Map<String, Object>> resultN = new ArrayList<>();

	    for (ProductVO product : productNList) {
	        Map<String, Object> map = new HashMap<>();
	        map.put("productCode", product.getProductCode());
	        map.put("productName", product.getProductName());
	        map.put("productNPrice", product.getProductNPrice());
	        resultN.add(map);
	    }

	    ModelAndView modelAndView = new ModelAndView("product/getNList");
	    modelAndView.addObject("resultN", resultN);
	    log.info("닌텐도용품 상품리스트 목록 조회  " + modelAndView);
	    return modelAndView;
	}
	
	
   @GetMapping("/getAList/detail")
    public ModelAndView getAListRead(@RequestParam("productCode") int productCode) {
        ProductVO productA = service.getAListRead(productCode);
        
        ModelAndView modelAndView = new ModelAndView("product/getAListDetail");
        modelAndView.addObject("productA", productA);
        log.info("아미보카드 상품 중 택1 선택  " + modelAndView);
    
       return modelAndView;
   }
   
   @GetMapping("/getGList/detail")
    public ModelAndView getGListRead(@RequestParam("productCode") int productCode) {
        ProductVO productG = service.getGListRead(productCode);
        
        ModelAndView modelAndView = new ModelAndView("product/getGListDetail");
        modelAndView.addObject("productG", productG);
        log.info("굿즈카드 상품 중 택1 선택  " +modelAndView);
   
       return modelAndView;
   }
   
   
   @GetMapping("/getNList/detail")
    public ModelAndView getNListRead(@RequestParam("productCode") int productCode) {
        ProductVO productN = service.getNListRead(productCode);
        
        ModelAndView modelAndView = new ModelAndView("product/getNListDetail");
        modelAndView.addObject("productN", productN);
        log.info("닌텐도 상품 중 택1 선택  " + modelAndView);
  
       return modelAndView;
   }
	   
	   
	
}
