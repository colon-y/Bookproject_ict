package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.UsedbookVo;

public class UsedbookDaoImpl implements UsedbookDao {

	SqlSession sqlSession;

	public UsedbookDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<UsedbookVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(UsedbookVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
}
