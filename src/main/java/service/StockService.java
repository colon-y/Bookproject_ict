package service;

import java.util.Map;

import vo.StockVo;

public interface StockService {

	Map selectList();
	int insert_in(StockVo vo) throws Exception;
	int insert_out(StockVo vo) throws Exception;
	int insert_remain(StockVo vo) throws Exception;
}
