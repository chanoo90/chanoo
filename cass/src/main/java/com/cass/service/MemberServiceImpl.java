package com.cass.service;

import java.sql.SQLException;

import com.cass.dao.MemberDAO;
import com.cass.dto.MemberVO;
import com.cass.exception.IdNotFoundException;
import com.cass.exception.InvalidPasswordException;

public class MemberServiceImpl implements MemberService{

	
	// MemberDAO 
	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO=memberDAO;
	}
	
	@Override
	public void login(String id, String pwd) throws SQLException,
												    IdNotFoundException,
												    InvalidPasswordException {
		
		MemberVO member = memberDAO.selectMemberById(id);
		
		if(member==null) throw new IdNotFoundException();
		if(!pwd.equals(member.getPwd())) throw new InvalidPasswordException();
		
	}
	
	@Override
	public MemberVO getMember(String m_id) throws SQLException {
		return memberDAO.selectMemberById(m_id);
	}
	
}




