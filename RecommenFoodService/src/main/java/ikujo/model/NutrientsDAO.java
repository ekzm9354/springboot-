package ikujo.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import ikujo.db.SqlSessionManger;

public class NutrientsDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManger.getSqlSession();
	SqlSession session;

	public ArrayList<NutrientsDTO> showNutrients(String nutnm) {
		session = sqlSessionFactory.openSession(true);
		ArrayList<NutrientsDTO> nutri_list = (ArrayList) session.selectList("showNutrients", nutnm);
		session.close();
		return nutri_list;
	}

	public String showNutImg(String nutnm) {
		session = sqlSessionFactory.openSession(true);
		String nutri_img = (String) session.selectOne("showNutImg", nutnm);
		session.close();
		return nutri_img;
	}
	//showNutriCate 오타
	public ArrayList<NutrientsDTO> showNutreCate(String keyword) {
		session = sqlSessionFactory.openSession(true);
		ArrayList<NutrientsDTO> nutriList = (ArrayList) session.selectList("showNutreCate", keyword);
		session.close();
		return nutriList;

	}
}
