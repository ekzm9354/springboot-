package ikujo.model;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class MemberDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;

	public int Join(MemberDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("Join", dto);
		session.close();
		return row;
	}

	public MemberDTO Login(MemberDTO dto) {
		session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("Login", dto);
		session.close();
		return info;
	}

	public int deleteInfo(String id) {
		session = sqlSessionFactory.openSession(true);
		row = session.delete("deleteInfo", id);
		session.close();
		return row;
	}
	public int deleteUi(String id) {
		session = sqlSessionFactory.openSession(true);
		row = session.delete("deleteUi", id);
		session.close();
		return row;
	}
	public int deleteNutrients(String id) {
		session = sqlSessionFactory.openSession(true);
		row = session.delete("deleteNutrients", id);
		session.close();
		return row;
	}
	public int update(MemberDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.update("update",dto);
		session.close();
		return row;
	}
	
	public String CheckId(String userid) {
		session = sqlSessionFactory.openSession(true);
		String data = session.selectOne("CheckId", userid);
		session.close();
		return data;
	}
	public String CheckName(String userNm) {
		session = sqlSessionFactory.openSession(true);
		String data = session.selectOne("CheckName", userNm);
		session.close();
		return data;
	}

}
