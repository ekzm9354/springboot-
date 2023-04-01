package com.JavaProject01.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

	private String frist_name;
	private String last_name;
	private String id;
	private String password;
}
