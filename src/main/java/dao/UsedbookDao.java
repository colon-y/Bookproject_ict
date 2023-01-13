package dao;

import java.util.List;

import vo.UsedbookVo;

public interface UsedbookDao {
	
	List<UsedbookVo> selectList();
	
	int update(UsedbookVo vo);

}
