package dao;

import java.util.List;

import vo.NoticeVo;

public interface NoticeDao {

	List<NoticeVo> selectList();

	int insert(NoticeVo vo);

	NoticeVo selectOne(int n_idx);

	int update(NoticeVo vo);

	int delete(int n_idx);


	

}
