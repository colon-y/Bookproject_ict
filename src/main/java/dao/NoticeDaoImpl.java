package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import vo.NoticeVo;

public class NoticeDaoImpl implements NoticeDao {

	SqlSession sqlSession;

	public NoticeDaoImpl(SqlSession sqlSession) {
		super();
		this.sqlSession = sqlSession;
	}

	@Override
	public List<NoticeVo> selectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("notice.notice_list");
	}

	@Override
	public int insert(NoticeVo vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("notice.notice_insert", vo);
	}

	@Override
	public NoticeVo selectOne(int n_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(NoticeVo vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int n_idx) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
