package com.JavaProject01.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BinanceTax {
	private String id;
	private Object orderId;
	private Object symbol;
	private String side;
	private Object price;
	private Object realizedPnl;
	private Object dates;
	private String pnl;
}
