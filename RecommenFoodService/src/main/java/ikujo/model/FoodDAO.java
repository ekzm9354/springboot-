package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class FoodDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;

	public int insertFood(FoodDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("insertFood", dto);
		session.close();
		return row;
	}
	public int insertFoodPresent(FoodDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("insertFoodPresent", dto);
		session.close();
		return row;
	}

	public ArrayList<String> SelectFood(String keyword) {
		System.out.println(keyword);
		session = sqlSessionFactory.openSession(true);
		ArrayList<String> food_list = (ArrayList) session.selectList("SelectFood", keyword);
		session.close();
		return food_list;
	}
	
	public ArrayList<String> SelectImg(String keyword) {
		System.out.println(keyword);
		session = sqlSessionFactory.openSession(true);
		ArrayList<String> food_img = (ArrayList) session.selectList("SelectImg", keyword);
		session.close();
		return food_img;
	}
	
	

}
