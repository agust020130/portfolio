package com.myweb.www.controller;

import javax.inject.Inject;


import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myweb.www.domain.ChatMessageVO;
import com.myweb.www.repository.ChatRoomDAO;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


@RequiredArgsConstructor
@Controller
@Slf4j
public class ChatMessageController {

	@Inject
	private final SimpMessagingTemplate template;
	@Inject
	private final ChatRoomDAO cdao;
//	  @MessageMapping(value = "/chat/enter")
//	  public void enter(ChatMessageVO message) {
//		  message.setChatmessageMessage(message.getChatmessageWriter() + "님이 채팅방에 입장하셨습니다");
//		  template.convertAndSend("/sub/chat/room/"+ message.getChatmessageRoomid(), message);
//	  }
		
	  @MessageMapping(value ="/chat/message")
	  public void message(ChatMessageVO message) {
		  //db에 저장
		  cdao.postChat(message);
		 
		  log.info("메세지 진입"+message);
		  template.convertAndSend("/sub/chat/room/"+ message.getChatmessageRoomid(),message);
	  }
}
