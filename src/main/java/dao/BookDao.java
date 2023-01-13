package dao;

import java.util.List;
import java.util.Map;

import vo.BookVo;

public interface BookDao {
	
	public List<BookVo> selectList();
	
	public List<BookVo> list();
	
	public List<BookVo> search_list();

	public BookVo selectOne(int b_idx);


	public int update(BookVo vo);

	public List<BookVo> selectList(Map map);

	

	

}
