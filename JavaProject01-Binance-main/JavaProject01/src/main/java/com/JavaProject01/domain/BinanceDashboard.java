package com.JavaProject01.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BinanceDashboard {
	private String dates;
	private String id;
	private String pnl;
	private String position;
	private String longs;
	private String shorts;
}
