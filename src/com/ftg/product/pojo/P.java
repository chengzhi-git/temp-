package com.ftg.product.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 *Author:唐丹丹
 *Date: 2019年10月17日
 *Functions：com.ftg.product.pojo.PlanList.java
 **/
public class P {
	private String PID ;
	private String  PNAME ;
	private String  UID ;
	private String  UNAME ;
	private String PCOUNT;
	private String PSTATUS;
	private String PBACK;
	private String GID;
	private String GNAME;
	private String PSUBMIT;
	private Date PDATE;
	public String getPID() {
		return PID;
	}
	public void setPID(String pID) {
		PID = pID;
	}
	public String getPNAME() {
		return PNAME;
	}
	public void setPNAME(String pNAME) {
		PNAME = pNAME;
	}
	public String getUID() {
		return UID;
	}
	public void setUID(String uID) {
		UID = uID;
	}
	public String getUNAME() {
		return UNAME;
	}
	public void setUNAME(String uNAME) {
		UNAME = uNAME;
	}
	public String getPCOUNT() {
		return PCOUNT;
	}
	public void setPCOUNT(String pCOUNT) {
		PCOUNT = pCOUNT;
	}
	public String getPSTATUS() {
		return PSTATUS;
	}
	public void setPSTATUS(String pSTATUS) {
		PSTATUS = pSTATUS;
	}
	public String getPBACK() {
		return PBACK;
	}
	public void setPBACK(String pBACK) {
		PBACK = pBACK;
	}
	public String getGID() {
		return GID;
	}
	public void setGID(String gID) {
		GID = gID;
	}
	public String getGNAME() {
		return GNAME;
	}
	public void setGNAME(String gNAME) {
		GNAME = gNAME;
	}
	public String getPSUBMIT() {
		return PSUBMIT;
	}
	public void setPSUBMIT(String pSUBMIT) {
		PSUBMIT = pSUBMIT;
	}
	public Date getPDATE() {
		return PDATE;
	}
	public void setPDATE(Date pDATE) {
		PDATE = pDATE;
	}
	
}
