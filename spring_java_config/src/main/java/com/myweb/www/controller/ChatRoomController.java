package com.myweb.www.controller;



import java.util.List;
import java.util.UUID;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.www.domain.ChatRoomVO;
import com.myweb.www.domain.MasterCategoryDTO;
import com.myweb.www.domain.ChatMessageVO;
import com.myweb.www.domain.ChatRoomDTO;

import com.myweb.www.domain.MasterVO;
import com.myweb.www.service.ChatRoomService;
import com.myweb.www.service.MasterService;

import lombok.extern.slf4j.Slf4j;

@RequestMapping(value = "/chat")
@Controller
@Slf4j
public class ChatRoomController {
 
	@Inject
	private ChatRoomService crsv;
	@Inject
	private MasterService msv;
	
	// 채팅방 개설
	@GetMapping("/room")
	public String chatInit(@RequestParam int chatroomSendid,@RequestParam int chatroomRecvid, RedirectAttributes rttr) {
		log.info("sendid번호 :"+chatroomSendid+"recvid번호 : "+chatroomRecvid);
		String chatroomuuid = UUID.randomUUID().toString();
		log.info("uuid : "+chatroomuuid);
		ChatRoomVO crvo = new ChatRoomVO(chatroomuuid,chatroomSendid,chatroomRecvid);
		int isOk = crsv.init(crvo);
		
		return "/chat/roomlist";
	}
		
	//채팅방 리스트
	@GetMapping("/roomlist")
	public String chatList(@RequestParam int chatroomSendid,Model m) {
		log.info("sendid : "+chatroomSendid);
		
		
		
		List<ChatRoomDTO> chatList = crsv.list(chatroomSendid);
		
		m.addAttribute("chatList", chatList);
		
		return "/chat/chatlist";
	}
	
	@GetMapping("roomlistmaster")
	public String chatListmaster(@RequestParam int chatroomRecvid,Model m) {
		log.info("recvid : "+chatroomRecvid);
		
		List<ChatRoomDTO> chatList = crsv.listMaster(chatroomRecvid);
		
		m.addAttribute("chatList", chatList);
		
		return "/chat/chatlistmaster";
	}
	
	@GetMapping("/roomin")
	public String chatRoomIn(@RequestParam String chatroomRoomid, Model m) {
		log.info("roomid : "+chatroomRoomid);
		
		ChatRoomDTO cdto = crsv.getMaster(chatroomRoomid);
		
		m.addAttribute("cdto",cdto);
		
		return "/chat/chatroom";
	}
	@GetMapping("/roominmaster")
	public String chatRoomInMaster(@RequestParam String chatroomRoomid, Model m) {
		log.info("roomid : "+chatroomRoomid);
		
		ChatRoomDTO cdto = crsv.getUser(chatroomRoomid);
		
		m.addAttribute("cdto",cdto);
		return "/chat/chatroommaster";
		
	}
	@GetMapping(value = "/{chatroomRoomid}",produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<ChatMessageVO>> spread(@PathVariable("chatroomRoomid")String chatroomRoomid){
		log.info(">>chatroomRoomid : "+ chatroomRoomid);
		List<ChatMessageVO> list = crsv.getList(chatroomRoomid);
		log.info("list size : "+list.size());
		return new ResponseEntity<List<ChatMessageVO>>(list,HttpStatus.OK);
	}
	// 채팅방 삭제
	@GetMapping("/deleteRoom")
	public String deleteChatRoom(@RequestParam String chatroomRoomid, Model m, RedirectAttributes rttr) {
		log.info("chatroomRoomid : " + chatroomRoomid);
		
		int isDelete = crsv.delteRoom(chatroomRoomid);
		rttr.addFlashAttribute("isDelete",isDelete);
		return "redirect:/chat/roomlist";
	}
	// 채팅방 readCheck
	@PutMapping(value = "/readCheck/{chatroomRoomid}", consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@PathVariable("chatroomRoomid")String chatroomRoomid,@RequestBody ChatMessageVO cvo ){
		log.info("chatroomRoomid :" + chatroomRoomid);
		log.info("cvo : "+ cvo);
		int isOk = crsv.modifyreadCheck(cvo);
		return isOk >0? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	
	
}
