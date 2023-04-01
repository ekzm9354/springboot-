package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class DessertDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;

	public int insertDimg(DessertDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.update("dimg", dto);
		session.close();
		return row;
	}
	
	public ArrayList<DessertDTO> showD(String keyword){
		session = sqlSessionFactory.openSession(true);
		ArrayList<DessertDTO> showList = (ArrayList) session.selectList("showD", keyword);
		session.close();
		return showList;
	}
}
