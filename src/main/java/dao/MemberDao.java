package dao;

import java.util.List;

import vo.MemberVo;

public interface MemberDao {

	public List<MemberVo> selectList();
	
	public MemberVo selectOne(int m_idx);
	
	public MemberVo selectOne(String m_id);
	
	public int insert(MemberVo vo);
	
	public int update(MemberVo vo);
	
	public int update(int m_leave);

}
