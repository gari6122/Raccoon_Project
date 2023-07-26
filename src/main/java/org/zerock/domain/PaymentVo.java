package org.zerock.domain;

import java.util.Date;

import lombok.Data;


@Data
public class PaymentVo {
	
	private String imp_uid; //고유 ID
	private String merchant_uid; // 상점 거래 ID
	int paid_amount; // 결제 금액
	private String apply_num; // 카드 승인 번호
	private Date paid_at; // 카드 승인 시간
}

