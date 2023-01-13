package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import vo.BookVo;

public class BookDaoImpl implements BookDao{

	SqlSession sqlSession;

	public BookDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	
	@Override
	public List<BookVo> list() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("book.book_list");
	}

	@Override
	public BookVo selectOne(int b_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(BookVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BookVo> selectList() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<BookVo> selectList(Map map) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("book.book_search_list", map);
	}


	@Override
	public List<BookVo> search_list() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
