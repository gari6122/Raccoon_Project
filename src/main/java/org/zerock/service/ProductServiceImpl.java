package org.zerock.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ProductVO;
import org.zerock.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper mapper;
	

	@Override
	public List<ProductVO> getAList(ProductVO vo) {
		return mapper.getAList(vo);
	}
	
	@Override
	public List<ProductVO> getGList(ProductVO vo) {
		return mapper.getGList(vo);
	}

	@Override
	public List<ProductVO> getNList(ProductVO vo) {
		return mapper.getNList(vo);
	}

	@Override
	public ProductVO getAListRead(int productCode) {
		log.info("아미보상품 상세조회" + productCode);
		return mapper.getAListRead(productCode);
	}

	@Override
	public ProductVO getGListRead(int productCode) {
		log.info("굿즈상품 상세조회" + productCode);
		return mapper.getGListRead(productCode);
	}

	@Override
	public ProductVO getNListRead(int productCode) {
		log.info("닌텐도용품 상세조회" + productCode);
		return mapper.getNListRead(productCode);
	}

		
}
	


	

