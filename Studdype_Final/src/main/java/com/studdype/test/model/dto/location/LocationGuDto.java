package com.studdype.test.model.dto.location;

public class LocationGuDto {
	private int gu_no; // �� ��ȣ
	private int si_no; // �� ��ȣ
	private String gu_name; // �� �̸�

	public LocationGuDto() {
		super();
	}

	public LocationGuDto(int gu_no, int si_no, String gu_name) {
		super();
		this.gu_no = gu_no;
		this.si_no = si_no;
		this.gu_name = gu_name;
	}

	public int getGu_no() {
		return gu_no;
	}

	public void setGu_no(int gu_no) {
		this.gu_no = gu_no;
	}

	public int getSi_no() {
		return si_no;
	}

	public void setSi_no(int si_no) {
		this.si_no = si_no;
	}

	public String getGu_name() {
		return gu_name;
	}

	public void setGu_name(String gu_name) {
		this.gu_name = gu_name;
	}
}
