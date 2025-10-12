package com.mycompany.myapp.VO;

import org.springframework.web.multipart.MultipartFile;

public class BookVO {
	int b_no,d_no,b_count,b_price;
	String b_name, b_author, b_exp, b_img;
	
//	b_img에 사진이름 넣기전에 그냥 받는 이미지데이터
//	db에는 존재하지 않고 service에서 파일저장하고 파일이름만 db에 넣을예정
	MultipartFile b_img_full;
	
	
	public BookVO() {
	}
	
	


	public BookVO(int d_no, int b_count, int b_price, String b_name, String b_author, String b_exp) {
		this.d_no = d_no;
		this.b_count = b_count;
		this.b_price = b_price;
		this.b_name = b_name;
		this.b_author = b_author;
		this.b_exp = b_exp;
	}

	public BookVO(int d_no, int b_count, int b_price, String b_name, String b_author, String b_exp, String b_img) {
		this.d_no = d_no;
		this.b_count = b_count;
		this.b_price = b_price;
		this.b_name = b_name;
		this.b_author = b_author;
		this.b_exp = b_exp;
		this.b_img = b_img;
	}
	
	
	
	public BookVO(int d_no, int b_count, int b_price, String b_name, String b_author, String b_exp, String b_img,
			MultipartFile b_img_full) {
		this.d_no = d_no;
		this.b_count = b_count;
		this.b_price = b_price;
		this.b_name = b_name;
		this.b_author = b_author;
		this.b_exp = b_exp;
		this.b_img = b_img;
		this.b_img_full = b_img_full;
	}




	public MultipartFile getB_img_full() {
		return b_img_full;
	}
	public void setB_img_full(MultipartFile b_img_full) {
		this.b_img_full = b_img_full;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getD_no() {
		return d_no;
	}
	public void setD_no(int d_no) {
		this.d_no = d_no;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_author() {
		return b_author;
	}
	public void setB_author(String b_author) {
		this.b_author = b_author;
	}
	public String getB_exp() {
		return b_exp;
	}
	public void setB_exp(String b_exp) {
		this.b_exp = b_exp;
	}
	public String getB_img() {
		return b_img;
	}
	public void setB_img(String b_img) {
		this.b_img = b_img;
	} 
	
}
