package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class NutrientsRegistDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;
	
	public int insertNutri( NutrientsRegistDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("insertNutri", dto);
		session.close();
		return row;
	}

}
