package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.PaymentVo;
import org.zerock.mapper.PaymentMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class PaymentServiceImpl implements PaymentService {

	
	private PaymentMapper mapper;
	
	@Override
	public void insertPaymentSuccess(PaymentVo vo) {
		mapper.insertPaymentSuccess(vo);

	}

	@Override
	public void insertPaymentSuccess2(PaymentVo vo) {
		mapper.insertPaymentSuccess2(vo);
	}

	@Override
	public void insertPaymentSuccess3(PaymentVo vo) {
		mapper.insertPaymentSuccess3(vo);
	}

}
