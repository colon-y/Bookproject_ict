package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.BookVo;

public class MainDaoImpl implements MainDao {

	SqlSession sqlSession;	
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}


	@Override
	public List<BookVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("main.main");
	}
}
