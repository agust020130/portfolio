package com.myweb.www.controller;

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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myweb.www.config.Handler.FileHandler;
import com.myweb.www.domain.BoardVO;
import com.myweb.www.domain.FileVO;
import com.myweb.www.domain.MasterVO;
import com.myweb.www.domain.UserProfileDTO;
import com.myweb.www.domain.UserVO;
import com.myweb.www.domain.memeberDTO;
import com.myweb.www.repository.FileDAO;
import com.myweb.www.repository.UserDAO;

import com.myweb.www.service.MasterService;
import com.myweb.www.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/user/*")
public class UserController {

	@Inject
	private UserService usv;
	@Inject
	private MasterService msv;
	@Inject
	private FileHandler fhd;
	@Inject
	private UserDAO udao;
	@Inject
	private FileDAO fdao;
	
	
	@GetMapping("/logo")
	public String logo(@RequestParam("userNum")int userNum,Model m) {
		log.info("userNum :"+userNum);
		UserVO uvo = udao.getUser(userNum);
		memeberDTO mdto = new memeberDTO();
		mdto.setMvo(null);
		mdto.setUvo(uvo);
		m.addAttribute("mdto",mdto);
		return "home";
	}
	
	
	
	@GetMapping("/login")
	public String login() {
	
		return "/user/login";
	}
	
	@GetMapping("/signup")
	public String signup() {
	
		return "/user/signup";
	}
	
	@PostMapping("/signup")
	public String signup(UserVO uvo , Model m) {
		log.info("uvo : "+uvo.toString());
		int isOk = usv.register(uvo);
		return "/user/login";
		
	}

	@GetMapping("/list")
	public String list(Model m) {
		List<UserVO> list = usv.getList();
		m.addAttribute("list" , list);
		log.info("list 성공");
		return "/user/list";
	}
	
	//아이디 중복체크
	@PostMapping("/emailCheck")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email) {
		int cnt = usv.emailCheck(email);
		log.info("cnt : "+cnt);
		log.info("email : "+email);
		if(cnt==0) {
			cnt = msv.emailCheck(email);
		}
		return cnt;
		
	}
	
	@GetMapping("/login_auth")
	public String login_auth(@RequestParam("userEmail") String email, @RequestParam("userPw") String pw, HttpServletRequest request, Model m) {
	   // 일단 유저VO 로그인 확인
		UserVO uvo = new UserVO(email, pw);
	    log.info("email : " + email);
	    log.info("pw : " + pw);

	    UserVO loginUvo = usv.loginAuth(uvo);
	    
	    if (loginUvo != null) {
	    	//UserVo로 로그인이 가능하면
	    	memeberDTO mdto = new memeberDTO();
	    	mdto.setUvo(loginUvo);
	    	mdto.setMvo(null);
	    	log.info("userNum"+mdto.getUvo().getUserNum());
	    	mdto.setFlist(fdao.getFileList(mdto.getUvo().getUserNum()));
	    	log.info("uvo :"+ mdto.getUvo().toString());
	    	log.info("flist :"+ mdto.getFlist().toString());
	    	
	    	m.addAttribute("mdto",mdto);
	        HttpSession ses = request.getSession();
	        ses.setAttribute("ses", loginUvo);
	        ses.setMaxInactiveInterval(10 * 60);
	        request.setAttribute("msg_login", 1);
	        return "/home";
	    } else {
	    	MasterVO mvo = new MasterVO(email, pw);
	    	MasterVO loginMaster = msv.loginAuth(mvo);
	    	if(loginMaster != null) {
	    		memeberDTO mdto = new memeberDTO();
	    		mdto.setMvo(loginMaster);
	    		mdto.setUvo(null);
	    		m.addAttribute("mdto",mdto);
	    		HttpSession ses = request.getSession();
	    		ses.setAttribute("ses", loginMaster);
	    		ses.setMaxInactiveInterval(10*60);	
	    		log.info("마스터로그인입니다");
	    		return "home";
	    	}else {
	    		request.setAttribute("msg_login", 0);	
	    		return "home";
	    	}
	    }

	    
	}

	@GetMapping("/edit")
	public String edit () {
		return "/user/edit";
	}
	
	@PostMapping("/edit_auth")
	public String edit_auth(@ModelAttribute("uvo") UserVO uvo, Model m , HttpServletRequest request) {
	    log.info("uvo: " + uvo.toString());
	    int isOk = usv.edit(uvo);
	    if(isOk > 0) {
	    	HttpSession ses = request.getSession();
	    	ses.setAttribute("ses", uvo);
	    	ses.setAttribute("ses", uvo); //두번 선언해야 즉각 변경이되네요.
			log.info("-=-=> session 변경 완료");
		}
	    return "home";
	}
	
	@GetMapping("/logout")
	public String logout (HttpServletRequest request) {
		HttpSession ses = request.getSession();
		ses.invalidate();
		return "home";
	}
	
	@GetMapping("/delete")
	public String delete(HttpServletRequest request) {
	    HttpSession ses = request.getSession();
	    UserVO uvo = (UserVO) ses.getAttribute("ses"); // 세션에서 로그인된 사용자 정보 가져오기
	        int isOk = usv.delete(uvo);
	        if (isOk > 0) {
	            ses.invalidate(); // 세션 무효화
	        }
	    return "home";
	}

	@PostMapping(value = "/profileRegister")
	public String registerProfile(@RequestParam("userNum")int userNum, RedirectAttributes rAttr,
		@RequestParam(name="file", required = false)MultipartFile[] files) {
		
		log.info("files :"+files.toString());
		
		List<FileVO> flist = null;
		UserVO selectUvo = udao.getUser(userNum);
		
		if(files[0].getSize()>0) {
			
			flist = fhd.uploadFiles(files,selectUvo.getUserPhone());
		}else {
			log.info("file null");
		}
		
		UserProfileDTO updto = new UserProfileDTO(selectUvo,flist);
		int isOk = usv.profileRegister(updto);
		log.info(">>profile register >>"+(isOk>0? "OK":"FAIL"));
		rAttr.addFlashAttribute("isOk",isOk);
		return "redirect:/";
	}
	@GetMapping(value="/goimage")
	public String  goimage(Model m, @RequestParam("userNum")int userNum) {
		UserProfileDTO updto = usv.getuserProfile(userNum);
		
		m.addAttribute("updto",updto);
		return "home";
	}
	
	@GetMapping(value="/mypage")
	public String mypage(@RequestParam("userNum")int userNum, Model m) {
		
		UserVO uvo = udao.getUser(userNum);
		
		m.addAttribute("uvo",uvo);
		return "/user/userMypage";
	}
	
	@GetMapping(value="/detailmypage")
	public String mypageDetail(@RequestParam("userNum")int userNum, Model m) {
		UserVO uvo= udao.getUser(userNum);
		m.addAttribute("uvo",uvo);
		return "/user/userDetailMypage";

	}
	
	//이름수정
	@PutMapping(value = "/updateName/{userNum}", consumes ="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updateName(@PathVariable("userNum")int userNum,@RequestBody UserVO uvo ){
		log.info("userNum :"+ userNum );
		log.info("uvo : "+ uvo);
		int isOk = usv.updateNameUser(uvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//비밀번호수정
	@PutMapping(value = "/updatePw/{userNum}", consumes ="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updatePw(@PathVariable("userNum")int userNum,@RequestBody UserVO uvo ){
		log.info("userNum :"+ userNum );
		log.info("uvo : "+ uvo);
		int isOk = usv.updatePwUser(uvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
	//핸드폰 번호 수정
	@PutMapping(value = "/updatePhone/{userNum}", consumes ="application/json",
			produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> updatePhone(@PathVariable("userNum")int userNum,@RequestBody UserVO uvo ){
		log.info("userNum :"+ userNum );
		log.info("uvo : "+ uvo);
		int isOk = usv.updatePhoneUser(uvo);
		return isOk > 0 ? new ResponseEntity<String>("1", HttpStatus.OK)
				: new ResponseEntity<String>("0", HttpStatus.INTERNAL_SERVER_ERROR);
	}
}

