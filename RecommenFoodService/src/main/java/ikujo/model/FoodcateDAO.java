package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;

import ikujo.db.SqlSessionManger;

public class FoodcateDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;

	// 밥류 전체 데이터 조회
	public ArrayList<FoodcateDTO> selectCate(String keyword) {
		session = sqlSessionFactory.openSession(true);
		ArrayList<FoodcateDTO> riceList = (ArrayList) session.selectList("selectCate",keyword);
		session.close();
		return riceList;
	}
}
