package dao;

import java.util.List;

import vo.CartVo;

public interface CartDao {
	
	List<CartVo> list(int m_idx);
	
	List<CartVo> list();

	int selectTotalAmount(int m_idx);

	int delete(int c_idx);

	

	

	

}
