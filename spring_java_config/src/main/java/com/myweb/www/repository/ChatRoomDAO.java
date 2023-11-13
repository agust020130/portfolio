package com.myweb.www.repository;

import java.util.List;

import com.myweb.www.domain.ChatMessageVO;
import com.myweb.www.domain.ChatRoomVO;

public interface ChatRoomDAO {

	int init(ChatRoomVO crvo);

	List<ChatRoomVO> list(int chatroomSendid);

	ChatRoomVO getMaster(String chatroomRoomid);

	int postChat(ChatMessageVO cvo);

	List<ChatRoomVO> listmaster(int chatroomRecvid);

	List<ChatMessageVO> getlist(String chatroomRoomid);

	ChatRoomVO getUser(String chatroomRoomid);

	int deleteRoom(String chatroomRoomid);

	int modifyreadCheck(ChatMessageVO cvo);


	String getLastMsg(String chatroomRoomid);

	int getReadCount(String chatroomRoomid);

	

	

	

	

}
