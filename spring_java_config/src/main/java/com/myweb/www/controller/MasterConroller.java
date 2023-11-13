package com.myweb.www.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.www.domain.CategoryVO;
import com.myweb.www.domain.MasterCategoryDTO;
import com.myweb.www.domain.MasterVO;
import com.myweb.www.domain.memeberDTO;
import com.myweb.www.service.CategoryService;
import com.myweb.www.service.MasterService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/master/*")
public class MasterConroller {

	@Inject
	private MasterService msv;
	@Inject
	private CategoryService cgsv;
	
	@GetMapping("/getProfile")
	public String getMasterProfile(@RequestParam int masterNum, Model m) {
		log.info("masterProfile 진입");
		MasterVO mvo = msv.getMaster(masterNum);
		CategoryVO cgvo = cgsv.getServiceName(mvo.getMasterCategoryCode());
		MasterCategoryDTO cmdto = new MasterCategoryDTO();
		cmdto.setCgvo(cgvo);
		cmdto.setMvo(mvo);
		m.addAttribute("cmdto",cmdto);
		
		return "/master/masterprofile";
	}
	// 마스터 번호로 masterVO 데이터 가지고 오는 메서드
	@GetMapping("/getmaster")
	public void getMaster(@RequestParam int masterNum,Model m) {
		log.info("Master getMaster 진입");
		MasterVO mvo = msv.getMaster(masterNum);
		
	}
	//이름수정
	@PutMapping(value = "/updateName/{masterNum}", consumes ="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateName(@PathVariable("masterNum")int masterNum,@RequestBody MasterVO mvo ){
		log.info("masterNum :"+ masterNum );
		log.info("mvo : "+ mvo);
		int isOk = msv.updateNameMaster(mvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//한줄소개수정
	@PutMapping(value = "/updateintro/{masterNum}", consumes ="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateIntro(@PathVariable("masterNum")int masterNum,@RequestBody MasterVO mvo ){
		log.info("masterNum :"+ masterNum );
		log.info("mvo : "+ mvo);
		int isOk = msv.updateIntroMaster(mvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//주소 수정
	@PutMapping(value = "/updatediser/{masterNum}", consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateDisir(@PathVariable("masterNum")int masterNum,@RequestBody MasterVO mvo){
		log.info("masterNum : "+masterNum);
		log.info(mvo.toString());
		int isOk = msv.updateDesir(mvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//시간 수정
	@PutMapping(value = "/updatetime/{masterNum}", consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateTime(@PathVariable("masterNum")int masterNum,@RequestBody MasterVO mvo){
		log.info("masterNum : "+masterNum);
		log.info(mvo.toString());
		int isOk = msv.updateTime(mvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//고용수 수정
	@PutMapping(value = "/updatesize/{masterNum}", consumes = "application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateSize(@PathVariable("masterNum")int masterNum,@RequestBody MasterVO mvo){
		log.info("masterNum : "+masterNum);
		log.info(mvo.toString());
		int isOk = msv.updateSize(mvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping("/mastercategory")
	public String mastercategorySelect(HttpServletRequest request, Model m) {
		HttpSession ses = request.getSession();
		MasterVO mvo = (MasterVO) ses.getAttribute("ses");
		log.info("masternum :"+ mvo.getMasterNum());
		MasterVO mvoSelect = msv.getMaster(mvo.getMasterNum());
		m.addAttribute("mvo", mvoSelect);
		return "/master/mastercategory";
	}
	
	@PostMapping("/categorySelect")
	public String masterCategorySelect(MasterVO mvo, Model m, RedirectAttributes rAttr) {
		
		log.info("master :"+ mvo.toString());
		int isOk = msv.updateMasterCategory(mvo);
		log.info("master :"+mvo.getMasterCategoryCode());
		return "/master/editcomplete";
	}
	// 메인에서 각 카테고리의 고수 숫자 가져오는 메서드
	@GetMapping(value = "/masterCount/{upCategoryVal}",produces = {MediaType.APPLICATION_JSON_VALUE })
	public ResponseEntity<String> masterTotalCount(@PathVariable("upCategoryVal")String upCategoryCode) {
		log.info("스프레드진입");
		
		String totalCount = msv.getTotalCount(upCategoryCode);
		log.info("totalcount :"+ totalCount);
		
		return new ResponseEntity<String>(totalCount, HttpStatus.OK);
	}
	
	// 메인에서 각 카테고리의 마스터 정보를 가져오는 메서드
	@GetMapping(value = "/lessonMaster/{upCategoryVal}", produces = {MediaType.APPLICATION_JSON_VALUE})
	public ResponseEntity<List<MasterVO>> upCategorymasterList(@PathVariable("upCategoryVal")String upCategoryCode){
		log.info("카테고리마스터 진입");
		List<MasterVO> list =msv.getList(upCategoryCode);
		log.info("list size :"+ list.size());
		return new ResponseEntity<List<MasterVO>>(list, HttpStatus.OK);
	}
	
	// masterSignup 메서드 한번에 복붙하시면 됩니다.
	@PostMapping(value = "/masterSignup", consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> masterSignup(@RequestBody HashMap<String, ArrayList> map, MasterVO mvo) {
		log.info("컨트롤러 시작");
		log.info("map : "+map.toString());
		String upCategory = (String) map.get("array").get(0);
		String category = (String) map.get("array").get(1);
		String name = (String) map.get("array").get(2);
		String gender = (String) map.get("array").get(3);
		String email = (String) map.get("array").get(4);
		String pw = (String) map.get("array").get(5);
		String phone = (String) map.get("array").get(6);
		log.info(category);
		log.info(name);
		log.info(gender);
		log.info(email);
		log.info(pw);
		log.info(phone);
		log.info(upCategory);
		mvo = new MasterVO(category, name, gender, email, pw, phone, upCategory);
		log.info("mvo : "+mvo.toString());
		msv.register(mvo);

		return new ResponseEntity<String>("1", HttpStatus.OK);
	}
	
	//
	@GetMapping("/masterSignup")
	public String login() {
	
		return "/master/masterSignup";
	}
	@GetMapping("/materhome")
	public String masterhome(@RequestParam("masterNum")int masterNum, Model m) {
		MasterVO mvo = msv.getMaster(masterNum);
		memeberDTO mdto = new memeberDTO();
		mdto.setMvo(mvo);
		mdto.setUvo(null);
		m.addAttribute("mdto",mdto);
		return "home";
	}
	
}
