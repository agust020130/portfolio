package com.myweb.www.service;

import java.util.List;

import com.myweb.www.domain.EstimateVO;
import com.myweb.www.domain.MasterVO;

public interface MasterService {

	MasterVO getMaster(int masterNum);

	MasterVO loginAuth(MasterVO mvo);



	int updateNameMaster(MasterVO mvo);

	int updateMasterCategory(MasterVO mvo);

	int updateIntroMaster(MasterVO mvo);

	int updateDesir(MasterVO mvo);

	int updateTime(MasterVO mvo);

	int updateSize(MasterVO mvo);
	

	String getTotalCount(String upCategoryCode);

	List<MasterVO> getList(String upCategoryCode);
	//견적관련 메서드
	int register(MasterVO mvo);
	
	List<MasterVO> selectList(EstimateVO evo);

	MasterVO selectOne(EstimateVO evo);

	String selectCategoryName(EstimateVO evo);

	int emailCheck(String email);

}
