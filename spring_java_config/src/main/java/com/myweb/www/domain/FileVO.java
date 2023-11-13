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
public class FileVO {
	
	private String fileUuid;
	private String fileSaveDir;
	private String fileName;
	private int fileType;
	private long fileSize;
	private String fileRegDate;
	private int fileUserNum;
	private int fileMasterNum;
	
}