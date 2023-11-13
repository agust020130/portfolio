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
public class MasterVO {
	//	create table master(
//			master_num  int auto_increment,
//			master_email varchar(100) not null,
//			master_pw varchar(100) not null,
//			master_name varchar(100) not null,
//			master_phone varchar(100) not null,
//			master_reg_date datetime default now(),
//			master_auth tinyint(1),
//			up_category_code varchar(8),
//			master_category_code varchar(8),
//			master_purpose varchar(100),
//			master_progress varchar(100),
//			master_agegroup varchar(100),
//			master_gender varchar(50),
//			master_day varchar(100),
//			master_time varchar(100),
//			master_desireregion varchar(100),
//			primary key(master_num));
	private int masterNum;
	private String masterEmail;
	private String masterPw;
	private String masterName;
	private String masterPhone;
	private String regDate;
	private int masterAuth;
	private String masterUpCategorycode;
	private String masterCategoryCode;
	private String masterPurpose;
	private String masterProgress;
	private String masterAgeGroup;
	private String masterGender;
	private String masterDay;
	private String masterTime;
	private String masterDesireregion;
	private String masterPrice;
	private String masterIntro;
	private String masterSize;
		
	public MasterVO(String email, String pw) {
		this.masterEmail = email;
		this.masterPw = pw;
	}
	public MasterVO(String category, String name, String gender, String email, String pw, String phone, String upCategory) {
		this.masterCategoryCode = category;
		this.masterName = name;
		this.masterGender = gender;
		this.masterEmail = email;
		this.masterPw = pw;
		this.masterPhone = phone;
		this.masterUpCategorycode = upCategory;		
	}
}
