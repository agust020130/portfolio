 package com.myweb.www.config.Handler;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Member;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.tika.Tika;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.myweb.www.domain.FileVO;
import com.myweb.www.domain.memeberDTO;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import net.coobird.thumbnailator.Thumbnails;

@Slf4j
@Component
public class FileHandler {
	private final String UP_DIR = "C:\\_myweb\\_java\\fileUpload";
	public List<FileVO> uploadFiles(MultipartFile[] files,String name){
		//email로 폴더생성
		
		File folders = new File(UP_DIR,name);
		if(!folders.exists()) {
			folders.mkdir(); // 폴더 생성명령
		}
		
		//경로설정
		List<FileVO> fList = new ArrayList<FileVO>();
		for(MultipartFile file : files) {
			FileVO fvo = new FileVO();
			fvo.setFileSaveDir(name);
			fvo.setFileSize(file.getSize());
			
		//경로가 포함되어있을 수도 잇는 파일명
		String originalFileName = file.getOriginalFilename();
		String onlyFileName = originalFileName.substring(
				originalFileName.lastIndexOf(File.separator)+1);
		log.info(">>> onlyFileNmae : "+ onlyFileName); // 파일이름
		fvo.setFileName(onlyFileName); // 파일 이름 설정
		
		UUID fileUuid = UUID.randomUUID();
		fvo.setFileUuid(fileUuid.toString());
		
		  //여기까지 fvo에 저장할 정보 생성 -> set
		
		// 디스크 파일 저장할 객체 생성
		String fullfileName = fileUuid.toString()+"_"+onlyFileName;
		File storeFile = new File(folders, fullfileName);
		
		//생성
		try {
			file.transferTo(storeFile); //원본 객체를 저장을 하기 위한 형태
			//파일 타입 결정
			if(isImageFile(storeFile)) {
				fvo.setFileType(1);
				// 37x37 형태의 썸네일 만들기
				File ThumbNail37 = new File(folders,fileUuid.toString()+"_th37_"+onlyFileName);
				Thumbnails.of(storeFile).size(37, 37).toFile(ThumbNail37);
				// 44x44 형태의 썸네일 만들기
				File ThumbNail44 = new File(folders,fileUuid.toString()+"_th44_"+onlyFileName);
				Thumbnails.of(storeFile).size(44, 44).toFile(ThumbNail44);
				// 60x60 형태의 썸네일 만들기
				File ThumbNail60 = new File(folders,fileUuid.toString()+"_th60_"+onlyFileName);
				Thumbnails.of(storeFile).size(60, 60).toFile(ThumbNail60);
				
			}
		} catch (Exception e) {
			log.info(">>> 파일 생성 오류~!!");
			e.printStackTrace();
		}
		fList.add(fvo);
		}
		return fList;
	}
	// tika 를 사용하여 파일 형식 체크 => 이미지 파일이 맞는지 체크
	private boolean isImageFile(File storeFile) throws IOException{
		String mimeType = new Tika().detect(storeFile); //image/jpg, image/png
		return mimeType.startsWith("image")? true:false;
	}
}
