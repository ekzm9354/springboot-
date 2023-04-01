package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class ChattingDAO {
	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;
	int row;
	
	public int ChattingInsert(ChattingDTO dto) {
		session = sqlSessionFactory.openSession(true);
		row = session.insert("ChattingInsert",dto);
		session.close();
		return row;
	}
	public ArrayList<ChattingDTO> ChattingAll(ChattingDTO dto){
		session = sqlSessionFactory.openSession(true);
		ArrayList<ChattingDTO> AllChtting = (ArrayList) session.selectList("ChattingAll", dto);
		session.close();
		return AllChtting;
	}
	public ArrayList<ChattingDTO> ChattingShow(ChattingDTO dto){
		session=sqlSessionFactory.openSession(true);
		ArrayList<ChattingDTO> ShowChatting = (ArrayList) session.selectList("ChattingShow", dto);
		session.close();
		return ShowChatting;
	}
	public int DeleteChatting(ChattingDTO dto){
		session=sqlSessionFactory.openSession(true);
		row = session.delete("DeleteChatting", dto);
		session.close();
		return row;
	}
	public int ChattingDeleteCheck(String c_seq){
		session=sqlSessionFactory.openSession(true);
		row = session.delete("ChattingDeleteCheck", c_seq);
		session.close();
		return row;
	}
	public ArrayList<ChattingDTO> ChattingCheck(String userid){
		session=sqlSessionFactory.openSession(true);
		ArrayList<ChattingDTO> CheckChatting = (ArrayList) session.selectList("ChattingCheck", userid);
		session.close();
		return CheckChatting;
	}
	
}
