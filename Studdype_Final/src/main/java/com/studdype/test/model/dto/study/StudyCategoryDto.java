package com.studdype.test.model.dto.study;

public class StudyCategoryDto {
	private int cate_no; 		// ī�װ� ��ȣ
	private String cate_name;	// ī�װ� �̸�

	public StudyCategoryDto() {
		super();
	}

	public StudyCategoryDto(int cate_no, String cate_name) {
		super();
		this.cate_no = cate_no;
		this.cate_name = cate_name;
	}

	public int getCate_no() {
		return cate_no;
	}

	public void setCate_no(int cate_no) {
		this.cate_no = cate_no;
	}

	public String getCate_name() {
		return cate_name;
	}

	public void setCate_name(String cate_name) {
		this.cate_name = cate_name;
	}
}
