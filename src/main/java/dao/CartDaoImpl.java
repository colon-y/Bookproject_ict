package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.CartVo;

public class CartDaoImpl implements CartDao {

	SqlSession sqlSession;

	public CartDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}
	
	public List<CartVo> list(int m_idx) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("pay.pay_cart_list", m_idx);
		
		
	}
	
	@Override
	public List<CartVo> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectTotalAmount(int m_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int c_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	
	
	
	
	
}
