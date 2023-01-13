package dao;

import org.apache.ibatis.session.SqlSession;

public class LikeDaoImpl implements LikeDao {

	SqlSession sqlsession;

	public LikeDaoImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}
	
	
	
}
