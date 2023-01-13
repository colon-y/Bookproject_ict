package dao;

import org.apache.ibatis.session.SqlSession;

public class CommentDaoImpl implements CommentDao {

	SqlSession sqlSession;

	public CommentDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}
	
	
	
}
