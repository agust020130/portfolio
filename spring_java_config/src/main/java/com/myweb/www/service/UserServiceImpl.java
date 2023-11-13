package com.myweb.www.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myweb.www.domain.FileVO;
import com.myweb.www.domain.UserProfileDTO;
import com.myweb.www.domain.UserVO;
import com.myweb.www.repository.FileDAO;
import com.myweb.www.repository.MasterDAO;
import com.myweb.www.repository.UserDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO udao;
	@Inject
	private MasterDAO mdao;
	@Inject
	private FileDAO fdao;

	@Override
	public int register(UserVO uvo) {
		// 서비스 레지스터 진입
		return udao.register(uvo);
	}

	@Override
	public List<UserVO> getList() {
		// 서비스 리스트 진입
		return udao.getList();
	}

	
	@ResponseBody
	@Override
	public int emailCheck(String email) {
	
		return udao.emailCheck(email);
	}

	@Override
	public UserVO loginAuth(UserVO loginUvo) {
		// TODO Auto-generated method stub
		return udao.login(loginUvo);
	}

	@Override
	public int edit(UserVO uvo) {
		// TODO Auto-generated method stub
		return udao.edit(uvo);
	}

	@Override
	public int delete(UserVO uvo) {
		// TODO Auto-generated method stub
		return udao.delete(uvo);
	}

	// 유저 프로필 사진
		@Override
		public int profileRegister(UserProfileDTO updto) {
			log.info("uvo + flist 진입");
			int isOk=0;
			if(updto.getFlist()==null) {
				isOk=1;
			}else {
				if(updto.getFlist().size()>0) {
					int userNum = updto.getUvo().getUserNum();
					for(FileVO fvo : updto.getFlist()) {
						fvo.setFileUserNum(userNum);
						log.info(">>>insert FILE :"+ fvo.toString());
						isOk *= fdao.insertFile(fvo);
					}
				}
			}
			
			return isOk;
		}
		// 유저 프로필 사진 불러오기
		@Override
		public UserProfileDTO getuserProfile(int userNum) {
			log.info("usernum : "+userNum);
			UserProfileDTO updto = new UserProfileDTO();
			updto.setUvo(udao.getUser(userNum));
			updto.setFlist(fdao.getFileList(userNum));
			return updto;
		}
		// 유저 이름 변경
		@Override
		public int updateNameUser(UserVO uvo) {
			// TODO Auto-generated method stub
			return udao.updateNameUser(uvo);
		}

		@Override
		public int updatePwUser(UserVO uvo) {
			// TODO Auto-generated method stub
			return udao.updatePwUser(uvo);
		}

		@Override
		public int updatePhoneUser(UserVO uvo) {
			// TODO Auto-generated method stub
			return udao.updatePhoneUser(uvo);
		}

		@Override
		public int findUserNum(String string) {
			return udao.findUserNum(string);
		}


	
	
}

