package com.cass.dao;

import java.sql.SQLException;
import java.util.List;

import com.cass.dto.PsmVO;


public interface PsmDAO {

	List<PsmVO> selectPsmList() throws SQLException;
	PsmVO selectPsmByPsm_id(int psm_id) throws SQLException;
	
	void insertPsm(PsmVO psm) throws SQLException;
	void updatePsm(PsmVO psm) throws SQLException;
	void deletePsm(int psm_id) throws SQLException;
	
	int selectPsmSeqNext() throws SQLException;
	
	int Psm_Check_end() throws SQLException;
}
