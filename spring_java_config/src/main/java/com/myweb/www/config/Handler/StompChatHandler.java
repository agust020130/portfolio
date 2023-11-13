//package com.myweb.www.config.Handler;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.inject.Inject;
//
//import org.springframework.messaging.handler.annotation.MessageMapping;
//import org.springframework.messaging.simp.SimpMessagingTemplate;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.socket.CloseStatus;
//import org.springframework.web.socket.TextMessage;
//import org.springframework.web.socket.WebSocketSession;
//import org.springframework.web.socket.handler.TextWebSocketHandler;
//
//import com.myweb.www.domain.ChatMessageVO;
//
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//
//@RequiredArgsConstructor
//@Controller
//@Slf4j
//public class StompChatHandler extends TextWebSocketHandler {
//	
//	
//	@Inject
//	private final SimpMessagingTemplate template = null;
//	
//	  
//	  //client가 send 할 수 있는경로
//	  //stompconfig 에서 설정한 ApplicationDestinationPrefixes 와 @messageMapping 경로가 병합됨
//	  //"pub/chat/enter"
//	  
//	  @MessageMapping(value = "/chat/enter")
//	  public void enter(ChatMessageVO message) {
//		  message.setChatmessageMessage(message.getChatmessageWriter() + "님이 채팅방에 입장하셨습니다");
//		  template.convertAndSend("/sub/chat/room/"+ message.getChatmessageRoomid(), message);
//	  }
//		
//	  @MessageMapping(value = "/chat/message")
//	  public void message(ChatMessageVO message) {
//		  log.info("메세지 진입");
//		  template.convertAndSend("/sub/chat/room/"+ message.getChatmessageRoomid(),message);
//	  }
//}
