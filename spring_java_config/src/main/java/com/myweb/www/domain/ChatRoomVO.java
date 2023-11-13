package com.myweb.www.domain;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import org.springframework.web.socket.WebSocketSession;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@NoArgsConstructor
@AllArgsConstructor
@Slf4j
@Setter
@Getter
public class ChatRoomVO {
	private String chatroomRoomid; //채팅방이름
	private int chatroomSendid; // 보내는사람 
	private int chatroomRecvid; //받는사람
	
	private String chatroomLastMsg; // 마지막메세지 (채팅방구현하고 완성)
	private int chatroomReadCount; // 읽지않은 메세지(채팅방구현하고 완성)
	private Set<WebSocketSession> sessions = new HashSet<>();
	
	//WebSocketSession spring에서 맺어진 세션
	
	
//	public ChatRoomVO create(int sendid , int recvid) {
//		log.info("sendid : "+sendid);
//		log.info("recvid : " +recvid);
//		String chatroomUuid = UUID.randomUUID().toString();
//		log.info("uuid : "+ chatroomUuid);
//		ChatRoomVO room = new ChatRoomVO(chatroomUuid, sendid,recvid);
//		
//		room.chatroomroomid = UUID.randomUUID().toString();
//		log.info("chatroomid : "+chatroomroomid);
//		room.chatroomsendid =sendid;
//		room.chatroomrecvid =recvid;
//		
//		return room;
//	}
	
	public ChatRoomVO(String chatroomUuid, int sendid, int recvid) {
		this.chatroomRoomid = chatroomUuid;
		this.chatroomSendid = sendid;
		this.chatroomRecvid = recvid;
	}
	// 어차피 채팅방을 만드건 고수가 할수없고 
	// 오직 유저만 가능함
	
	
	
}
