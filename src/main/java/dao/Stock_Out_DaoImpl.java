package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.StockVo;

public class Stock_Out_DaoImpl implements StockDao{

	SqlSession sqlSession;

	public Stock_Out_DaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<StockVo> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(StockVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(StockVo remainVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public StockVo selectOne(int b_idx) {
		// TODO Auto-generated method stub
		return null;
	}
}
