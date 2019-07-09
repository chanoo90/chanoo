package com.cass.dao;

import java.sql.SQLException;

import com.cass.dto.MemberVO;

public interface MemberDAO {

	
	//id 조회 MemberVO
	MemberVO selectMemberById(String id)throws SQLException;
	


}



