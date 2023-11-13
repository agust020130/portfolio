package com.myweb.www.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
@Getter
public class ChatRoomDTO {
	private ChatRoomVO crvo;
	private MasterVO mvo;
	private UserVO uvo;

}	