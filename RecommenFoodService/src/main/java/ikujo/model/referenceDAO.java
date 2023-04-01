package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class referenceDAO {
	
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;
	
	public referenceDTO referData(String id) {
		session = sqlSessionFactory.openSession(true);
		referenceDTO referenceDto = (referenceDTO) session.selectOne("referData", id);
		session.close();
		return referenceDto;
	}

}
