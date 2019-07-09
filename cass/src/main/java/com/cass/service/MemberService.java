package com.cass.service;

import java.sql.SQLException;

import com.cass.dto.MemberVO;
import com.cass.exception.IdNotFoundException;
import com.cass.exception.InvalidPasswordException;

public interface MemberService {
	
	// 로그인 기능
	void login(String id, String pwd)throws SQLException,
											IdNotFoundException,
											InvalidPasswordException;
	

	// 회원조회
	MemberVO getMember(String id)throws SQLException;
	

	
}







