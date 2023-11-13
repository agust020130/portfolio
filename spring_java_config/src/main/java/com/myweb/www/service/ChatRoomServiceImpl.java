package com.myweb.www.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.myweb.www.domain.ChatMessageVO;
import com.myweb.www.domain.ChatRoomDTO;

import com.myweb.www.domain.ChatRoomVO;
import com.myweb.www.domain.MasterVO;
import com.myweb.www.repository.ChatRoomDAO;
import com.myweb.www.repository.MasterDAO;
import com.myweb.www.repository.UserDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class ChatRoomServiceImpl implements ChatRoomService {
	
	@Inject
	private ChatRoomDAO rdao;
	@Inject
	private MasterDAO mdao;
	@Inject
	private UserDAO udao;

	@Override
	public int init(ChatRoomVO crvo) {
		
		return rdao.init(crvo);
	}

	
	
	@Override
	public List<ChatRoomDTO> list(int chatroomSendid) {
		
	
		List<ChatRoomDTO> cdtoList = new ArrayList<ChatRoomDTO>();
		List<ChatRoomVO> cList = rdao.list(chatroomSendid);
		
		
		//리스트 띄울때 로그인한사람의 채팅방에 존재하는 마스터 정보 불러오기(모두)
		for(ChatRoomVO tmp : cList) {
			
			ChatRoomDTO cdto = new ChatRoomDTO();
			cdto.setCrvo(tmp); 
			String lastMsg = rdao.getLastMsg(cdto.getCrvo().getChatroomRoomid());
			int readCount =rdao.getReadCount(cdto.getCrvo().getChatroomRoomid());
			cdto.getCrvo().setChatroomReadCount(readCount);
			cdto.getCrvo().setChatroomLastMsg(lastMsg);
			cdto.setMvo(mdao.getMaster(tmp.getChatroomRecvid()));
			cdtoList.add(cdto);
		}
		return cdtoList;
	}

	// 채팅방들어갈때 필요한 마스터 정보 불러오기(1개)
	@Override
	public ChatRoomDTO getMaster(String chatroomRoomid) {
		
	
		
		ChatRoomVO crvo = rdao.getMaster(chatroomRoomid);
		
		ChatRoomDTO cdto = new ChatRoomDTO();
		cdto.setCrvo(crvo);
		cdto.setMvo(mdao.getMaster(crvo.getChatroomRecvid()));
		cdto.setUvo(udao.getUser(crvo.getChatroomSendid()));
		return cdto;
	}
	
	
	@Override
	public ChatRoomDTO getUser(String chatroomRoomid) {
		ChatRoomVO crvo  = rdao.getUser(chatroomRoomid);
		ChatRoomDTO cdto = new ChatRoomDTO();
		cdto.setCrvo(crvo);
		cdto.setUvo(udao.getUser(crvo.getChatroomSendid()));
		cdto.setMvo(mdao.getMaster(crvo.getChatroomRecvid()));
		return cdto;
	}



	@Override
	public int postChat(ChatMessageVO cvo) {
		// TODO Auto-generated method stub
		return rdao.postChat(cvo);
	}



	@Override
	public List<ChatRoomDTO> listMaster(int chatroomRecvid) {
		List<ChatRoomDTO> cdtoList = new ArrayList<ChatRoomDTO>();
		List<ChatRoomVO> cList = rdao.listmaster(chatroomRecvid);
		//리스트 띄울때 로그인한사람의 채팅방에 존재하는 유저 정보 불러오기(모두)
		for(ChatRoomVO tmp : cList) {
			ChatRoomDTO cdto = new ChatRoomDTO();
			cdto.setCrvo(tmp); 
			String lastMsg = rdao.getLastMsg(cdto.getCrvo().getChatroomRoomid());
			int readCount =rdao.getReadCount(cdto.getCrvo().getChatroomRoomid());
			cdto.getCrvo().setChatroomReadCount(readCount);
			cdto.getCrvo().setChatroomLastMsg(lastMsg);
			cdto.setUvo(udao.getUser(tmp.getChatroomSendid()));
			cdto.setMvo(mdao.getMaster(tmp.getChatroomSendid()));
			cdtoList.add(cdto);
		}
		return cdtoList;
		
	}



	@Override
	public List<ChatMessageVO> getList(String chatroomRoomid) {
		//이전 채팅 불러오기
		return rdao.getlist(chatroomRoomid);
	}


	// 채팅방 삭제
	@Override
	public int delteRoom(String chatroomRoomid) {
		// TODO Auto-generated method stub
		return rdao.deleteRoom(chatroomRoomid);
	}



	@Override
	public int modifyreadCheck(ChatMessageVO cvo) {
		// TODO Auto-generated method stub
		log.info("readcheck 다오진입");
		return rdao.modifyreadCheck(cvo);
	}





	
}
