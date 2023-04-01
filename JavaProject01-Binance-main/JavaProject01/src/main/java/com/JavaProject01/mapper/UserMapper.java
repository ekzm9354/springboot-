package com.JavaProject01.mapper;


import org.apache.ibatis.annotations.Mapper;

import com.JavaProject01.domain.User;

@Mapper
public interface UserMapper {
	public int addUSER(User user);
	public int removeUSER(User User);
	public String loginUSER(User User);
}
