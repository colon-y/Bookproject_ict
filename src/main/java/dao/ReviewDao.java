package dao;

import java.util.List;

import vo.ReviewVo;

public interface ReviewDao {

	public List<ReviewVo> selecList();
	
	int selectRowtotal();
	
	public int insert(ReviewVo vo);
	
	public int update(ReviewVo vo);
	
	public int update_readhit(int r_idx);

	public ReviewVo selectOne(int r_idx);

	public List<ReviewVo> list();
	
}
