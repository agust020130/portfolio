package com.myweb.www.service;

import java.util.List;

import com.myweb.www.domain.UserProfileDTO;
import com.myweb.www.domain.UserVO;

public interface UserService {

	int register(UserVO uvo);

	List<UserVO> getList();

	int emailCheck(String email);

	UserVO loginAuth(UserVO loginUvo);

	int edit(UserVO uvo);

	int delete(UserVO uvo);

	int profileRegister(UserProfileDTO updto);

	UserProfileDTO getuserProfile(int userNum);

	int updateNameUser(UserVO uvo);

	int updatePwUser(UserVO uvo);

	int updatePhoneUser(UserVO uvo);
	
	int findUserNum(String string);

}
