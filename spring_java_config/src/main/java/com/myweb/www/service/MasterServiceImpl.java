package com.myweb.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myweb.www.domain.EstimateVO;
import com.myweb.www.domain.MasterVO;
import com.myweb.www.repository.MasterDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MasterServiceImpl implements MasterService {

	@Inject
	private MasterDAO mdao;
	//마스터 찾는 메소드
	@Override
	public MasterVO getMaster(int masterNum) {
		
		return mdao.getMaster(masterNum);
	}
	// 마스터 로그인 메소드
	@Override
	public MasterVO loginAuth(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.loginAuth(mvo);
	}

	
	// 고수프로필 이름 수정
	@Override
	public int updateNameMaster(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateNameMaster(mvo);
	}
	@Override
	public int updateMasterCategory(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateMasterCategory(mvo);
	}
	@Override
	public int updateIntroMaster(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateIntroMaster(mvo);
	}
	
	//고수 프로필 주소 수정
	@Override
	public int updateDesir(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateDesir(mvo);
	}
	//고수 프로필 시간 수정
	@Override
	public int updateTime(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateTime(mvo);
	}
	@Override
	public int updateSize(MasterVO mvo) {
		// TODO Auto-generated method stub
		return mdao.updateSize(mvo);
	}
	// 고수 전원 인원수
	@Override
	public String getTotalCount(String upCategoryCode) {
		// TODO Auto-generated method stub
		return mdao.getTotalCount(upCategoryCode);
	}
	@Override
	public List<MasterVO> getList(String upCategoryCode) {
		// TODO Auto-generated method stub
		return mdao.getList(upCategoryCode);
	}
	//견적관련 메서드
	@Override
	public List<MasterVO> selectList(EstimateVO evo) {
		log.info("@@@ : " + mdao.selectList(evo));
		return mdao.selectList(evo);
	}

	@Override
	public MasterVO selectOne(EstimateVO evo) {

		return mdao.selectOne(evo);
	}

	@Override
	public String selectCategoryName(EstimateVO evo) {
		
		return mdao.selectCategoryName(evo);
	}
	
	@Override
	public int register(MasterVO mvo) {
		
		return mdao.register(mvo);
	}
	@Override
	public int emailCheck(String email) {
		// TODO Auto-generated method stub
		return mdao.emailCheck(email);
	}

}
