package com.cass.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.cass.dto.MemberVO;

//@Repository("memberDAO") //<bean id="memberDAO" class="com.spring.dao.MybatisMemberDAOImpl" />
public class MybatisMemberDAOImpl implements MemberDAO{
	
	private SqlSession session;
	
	//@Autowired
	public void setSession(SqlSession session) {
		this.session=session;
	} 
	
	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		MemberVO member=
				session.selectOne("Member-Mapper.selectMemberById",id);			
		return member;
	}

	
}
