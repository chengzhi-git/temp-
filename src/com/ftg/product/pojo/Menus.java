package com.ftg.product.pojo;
/***********************
 * Author ：杜泉      
 * Day ：2019年10月14日
 * Time ：上午10:45:00
 * Functions:    com.ftg.product.pojo.Menus.java
 **********************/
public class Menus {
	private int MID;//菜单ID
	private String MNAME;//菜单名称
	private String MURL;//菜单地址
	private int MPID;//菜单父ID
	
	public int getMID() {
		return MID;
	}
	public void setMID(int mID) {
		MID = mID;
	}
	public String getMNAME() {
		return MNAME;
	}
	public void setMNAME(String mNAME) {
		MNAME = mNAME;
	}
	public String getMURL() {
		return MURL;
	}
	public void setMURL(String mURL) {
		MURL = mURL;
	}
	public int getMPID() {
		return MPID;
	}
	public void setMPID(int mPID) {
		MPID = mPID;
	}
}
