package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.ReviewVo;

public class ReviewDaoImpl implements ReviewDao {

	SqlSession sqlSession;

	public ReviewDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<ReviewVo> selecList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectRowtotal() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(ReviewVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(ReviewVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update_readhit(int r_idx) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReviewVo selectOne(int r_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVo> list() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
