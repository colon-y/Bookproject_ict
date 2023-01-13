package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.PayVo;

public class PayDaoImpl implements PayDao {

	SqlSession sqlsession;

	public PayDaoImpl(SqlSession sqlsession) {
		super();
		this.sqlsession = sqlsession;
	}

	@Override
	public List<PayVo> list() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
