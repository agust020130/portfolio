package com.myweb.www.service;

import java.util.List;

import com.myweb.www.domain.ChatMessageVO;
import com.myweb.www.domain.ChatRoomDTO;

import com.myweb.www.domain.ChatRoomVO;
import com.myweb.www.domain.MasterCategoryDTO;

public interface ChatRoomService {

	int init(ChatRoomVO crvo);

	List<ChatRoomDTO> list(int chatroomSendid);

	ChatRoomDTO getMaster(String chatroomRoomid);

	int postChat(ChatMessageVO cvo);

	List<ChatRoomDTO> listMaster(int chatroomRecvid);

	List<ChatMessageVO> getList(String chatroomRoomid);

	ChatRoomDTO getUser(String chatroomRoomid);

	int delteRoom(String chatroomRoomid);

	int modifyreadCheck(ChatMessageVO cvo);

}
