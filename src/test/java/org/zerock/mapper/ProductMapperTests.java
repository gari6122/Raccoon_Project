package org.zerock.mapper;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.PaymentVo;
import org.zerock.domain.ProductVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;	
	
	
	@Setter(onMethod_ = @Autowired)
	private PaymentMapper mapper2;
	
	
	//@Test
	   public void testGetAList() {
	         ProductVO productA = new ProductVO();
	           List<ProductVO> aList = mapper.getAList(productA);
	           System.out.println("아미보카드 List 목록:");
	           for (ProductVO product : aList) {
	               System.out.println(product);
	           }
	   }
	

	   //@Test
	   public void testAListProductRead() {
	      int productCode = 1; 
	        ProductVO aListRead = mapper.getAListRead(productCode);
	        System.out.println("아미보카드 Product 상세조회 :");
	        System.out.println(aListRead);
	   }
	   
		@Test
		public void testInsert() {
			PaymentVo vo = new PaymentVo();
			vo.setImp_uid("주문 첫번째 테스트입니다");
			vo.setMerchant_uid("jangnara");
			vo.setPaid_amount(1000);
			vo.setApply_num("20230");
			vo.setPaid_at(new Date());
			mapper2.insertPaymentSuccess(vo);
		}
	
}