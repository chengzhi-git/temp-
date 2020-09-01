package com.ftg.product.pojo;

import java.util.Date;

public class InStore {
	private String ISID	;
	private String ISNAME;
	private String PID;
	private Date ISDATE;
	/**
	 * @return the iSID
	 */
	
	public String getISID() {
		return ISID;
	}
	/**
	 * @param iSID the iSID to set
	 */
	public void setISID(String iSID) {
		ISID = iSID;
	}
	/**
	 * @return the iSNAME
	 */
	public String getISNAME() {
		return ISNAME;
	}
	/**
	 * @param iSNAME the iSNAME to set
	 */
	public void setISNAME(String iSNAME) {
		ISNAME = iSNAME;
	}
	/**
	 * @return the pID
	 */
	public String getPID() {
		return PID;
	}
	/**
	 * @param pID the pID to set
	 */
	public void setPID(String pID) {
		PID = pID;
	}
	/**
	 * @return the iSDATE
	 */
	public Date getISDATE() {
		return ISDATE;
	}
	/**
	 * @param iSDATE the iSDATE to set
	 */
	public void setISDATE(Date iSDATE) {
		ISDATE = iSDATE;
	}
	
	

}
