package com.JavaProject01.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Binance {
	private String id;
	private String api_key;
	private String sec_key;
}
