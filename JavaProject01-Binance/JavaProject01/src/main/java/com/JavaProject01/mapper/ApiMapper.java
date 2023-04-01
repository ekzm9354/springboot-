package com.JavaProject01.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.JavaProject01.domain.Binance;
import com.JavaProject01.domain.BinanceDashboard;
import com.JavaProject01.domain.BinanceTax;

@Mapper
public interface ApiMapper {
	public int addBinance(@Param("id") String id, @Param("api_key") String api_key, @Param("sec_key") String sec_key);

	public Binance findBinance(String id);

	public String findOrderIdBinance(Object orderId);

	public int addBinanceTax(BinanceTax binanceTax);

	public List<BinanceTax> findOrderBinance(String id);

	public String sumBinancePNL(@Param("id") String id, @Param("dates") String dates);

	public BinanceDashboard findDashboard(@Param("id") String id, @Param("dates") String dates);

	public int addDashboard(String id);

	public int updateDashboard(@Param("id") String id, @Param("dates") String dates);
	
	public List<BinanceDashboard> findAlldashBoard(String id);
}
