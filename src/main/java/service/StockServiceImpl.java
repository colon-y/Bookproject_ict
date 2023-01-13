package service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import dao.StockDao;
import vo.StockVo;

public class StockServiceImpl implements StockService {

	StockDao stock_in_dao;
	StockDao stock_out_dao;
	StockDao stock_remain_dao;
	
	public StockServiceImpl(StockDao stock_in_dao, StockDao stock_out_dao, StockDao stock_remain_dao) {
		super();
		this.stock_in_dao = stock_in_dao;
		this.stock_out_dao = stock_out_dao;
		this.stock_remain_dao = stock_remain_dao;
	}
	
	@Override
	public Map selectList() {
		// TODO Auto-generated method stub
		List<StockVo> in_list = stock_in_dao.list();
		List<StockVo> out_list = stock_out_dao.list();
		List<StockVo> remain_list = stock_remain_dao.list();
		
		Map map = new HashMap();
		map.put("in_list", in_list);
		map.put("in_list", in_list);
		map.put("in_list", in_list);
		
		return map;
	}


	@Override
	public int insert_in(StockVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		int res = 0;
		
		res = stock_in_dao.insert(vo);
		
		StockVo remainVo = stock_remain_dao.selectOne(vo.getB_idx());
		
		if(remainVo==null) {
			
			res = stock_remain_dao.insert(vo);
			
		}else {
			
			int cnt = remainVo.getS_cnt() + vo.getS_cnt();
			
			remainVo.setS_cnt(cnt);
			
			res = stock_remain_dao.update(remainVo);
		}
		
		return res;
	}

	@Override
	public int insert_out(StockVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert_remain(StockVo vo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
}
