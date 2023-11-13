package com.myweb.www.repository;

import java.util.List;

import com.myweb.www.domain.EstimateVO;
import com.myweb.www.domain.MasterVO;

public interface MasterDAO {

	MasterVO getMaster(int masterNum);

	MasterVO loginAuth(MasterVO mvo);



	int updateNameMaster(MasterVO mvo);

	int updateMasterCategory(MasterVO mvo);

	int updateIntroMaster(MasterVO mvo);

	int updateDesir(MasterVO mvo);

	int updateTime(MasterVO mvo);

	int updateSize(MasterVO mvo);
	
	List<MasterVO> getList(String upCategoryCode);

	String getTotalCount(String upCategoryCode);
	
	//견적서 관련 메서드
	List<MasterVO> selectList(EstimateVO evo);

	MasterVO selectOne(EstimateVO evo);

	String selectCategoryName(EstimateVO evo);

	int register(MasterVO mvo);

	int emailCheck(String email);

	

}
