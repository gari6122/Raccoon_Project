package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.ProductVO;

public interface ProductMapper {

	public List<ProductVO> getAList(ProductVO vo);
	
	public List<ProductVO> getGList(ProductVO vo);
	
	public List<ProductVO> getNList(ProductVO vo);

	public ProductVO getAListRead(int productCode);
	
	public ProductVO getGListRead(int productCode);
	
	public ProductVO getNListRead(int productCode);

}
