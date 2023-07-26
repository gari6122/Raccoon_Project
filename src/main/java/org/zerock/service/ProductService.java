package org.zerock.service;

import java.util.List;

import org.zerock.domain.ProductVO;

public interface ProductService {

	public List<ProductVO> getAList(ProductVO vo); 
	
	public List<ProductVO> getGList(ProductVO vo); 
	
	public List<ProductVO> getNList(ProductVO vo); 
	
	public ProductVO getAListRead(int productCode); // 아미보카드상세조회
	
	public ProductVO getGListRead(int productCode); // 굿즈 상세조회
	
	public ProductVO getNListRead(int productCode); // 닌텐도용품상세조회
	
}
