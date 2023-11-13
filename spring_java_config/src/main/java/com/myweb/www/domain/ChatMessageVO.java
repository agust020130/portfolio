package com.myweb.www.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@AllArgsConstructor
@NoArgsConstructor
@Slf4j
@Setter
@Getter
public class ChatMessageVO {
	private int chatmessageNum;
	private String chatmessageRoomid;
	private String chatmessageWriter;
	private String chatmessageMessage;
	private String chatmessageSendTime; //보내는시간
	private String chatmessageRecvTime; //받는시간
	private int chatmessageReadCheck;
	private String chatmessageSendDay;
	private String chatmessageSendName;
	private String chatmessageRecvName;
}
