package com.cass.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.cass.dto.PsmVO;

public class PsmDAOImpl implements PsmDAO {
	
	private SqlSession session;
	public void setSession(SqlSession session) {
		this.session=session;
	}
	@Override
	public List<PsmVO> selectPsmList() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PsmVO selectPsmByPsm_id(int psm_id) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insertPsm(PsmVO psm) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void updatePsm(PsmVO psm) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void deletePsm(int psm_id) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public int selectPsmSeqNext() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int Psm_Check_end() throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
