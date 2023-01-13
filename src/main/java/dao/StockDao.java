package dao;

import java.util.List;

import vo.StockVo;

public interface StockDao {

	List<StockVo> list();

	int insert(StockVo vo);

	int update(StockVo remainVo);

	StockVo selectOne(int b_idx);
	
	



}
