package com.JavaProject01.controller;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Hex;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.JavaProject01.domain.Binance;
import com.JavaProject01.domain.BinanceDashboard;
import com.JavaProject01.domain.BinanceTax;
import com.JavaProject01.mapper.ApiMapper;

import jakarta.servlet.http.HttpSession;

@Controller
public class BinanceController {

	@Autowired
	private ApiMapper apiMapper;

	@GetMapping("/binance")
	public String total(HttpSession session, Model model) {
		if (session.getAttribute("id") == null)
			return "login";

		Binance binance = apiMapper.findBinance((String) session.getAttribute("id"));

		String api_key = binance.getApi_key();
		String sec_key = binance.getSec_key();
		String endPoint = "https://fapi.binance.com";
		String timestamp = Long.toString(System.currentTimeMillis());
		String now = "timestamp=" + timestamp;
		String queryString = "";

		try {
			Mac hmac256 = Mac.getInstance("HmacSHA256");
			SecretKeySpec secKey = new SecretKeySpec(sec_key.getBytes(), "HmacSHA256");
			hmac256.init(secKey);
			String signature = new String(Hex.encodeHex(hmac256.doFinal(now.getBytes())));
			queryString = now + "&signature=" + signature;
			HttpClient client = HttpClientBuilder.create().build();
			HttpGet request = new HttpGet(endPoint + "/fapi/v2/account?" + queryString);
			request.addHeader("Content-Type", "application/json");
			request.addHeader("X-MBX-APIKEY", api_key);
			HttpResponse response = client.execute(request);
			HttpEntity entity = response.getEntity();
			String entityString = EntityUtils.toString(entity, "UTF-8");

//			account total balance
			JSONParser jsonParser = new JSONParser();
			JSONObject object = (JSONObject) jsonParser.parse(entityString);
			model.addAttribute("totalWalletBalance", object.get("totalWalletBalance"));

//			userTrades 		
			request = new HttpGet(endPoint + "/fapi/v1/userTrades?" + queryString);
			request.addHeader("Content-Type", "application/json");
			request.addHeader("X-MBX-APIKEY", api_key);
			response = client.execute(request);
			entity = response.getEntity();
			entityString = EntityUtils.toString(entity, "UTF-8");

			JSONArray userTrades = (JSONArray) jsonParser.parse(entityString);
			JSONObject orderId = (JSONObject) userTrades.get(userTrades.size() - 1);
			String check = apiMapper.findOrderIdBinance(orderId.get("orderId"));

			if (check == null) {
				BinanceTax binanceTax = new BinanceTax();
				binanceTax.setId((String) session.getAttribute("id"));
				binanceTax.setOrderId(orderId.get("orderId"));
				binanceTax.setSymbol(orderId.get("symbol"));

				if (orderId.get("side").equals("BUY"))
					binanceTax.setSide((orderId.get("positionSide").equals("LONG")) ? "OPEN_LONG" : "CLOSE_SHORT");
				else
					binanceTax.setSide((orderId.get("positionSide").equals("SHORT")) ? "OPEN_SHORT" : "CLOSE_LONG");

				binanceTax.setPrice(orderId.get("price"));
				String dates = new SimpleDateFormat("yyyy-MM-dd").format(orderId.get("time"));
				binanceTax.setDates(dates);
				binanceTax.setRealizedPnl(orderId.get("realizedPnl"));
				apiMapper.addBinanceTax(binanceTax);



			} else {
				List<BinanceTax> binanceList = apiMapper.findOrderBinance((String) session.getAttribute("id"));
				model.addAttribute("orderList", binanceList);
//				dashBoard
				String dates = new SimpleDateFormat("yyyy-MM-dd").format(orderId.get("time"));
				BinanceDashboard dashBoard = apiMapper.findDashboard((String) session.getAttribute("id"), dates);

				if (dashBoard == null)
					apiMapper.addDashboard((String) session.getAttribute("id"));
				else
					apiMapper.updateDashboard((String) session.getAttribute("id"), dates);
					model.addAttribute("dashBoard", dashBoard);
			}

		} catch (NoSuchAlgorithmException | InvalidKeyException | IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}

		return "binance";
	}
}
