package com.ftg.product.pojo;
/**
* Date:2019年10月24日
* Functions:com.ftg.product.pojo.CangKu.java
**/

public class CangKu {

	//仓库表
	private String SID;
	private String SNAME;

	//货位
	private String  GPID;
	private String  GPS;
	private String  SPACE;
	
	/**
	 * @return the sID
	 */
	public String getSID() {
		return SID;
	}
	/**
	 * @param sID the sID to set
	 */
	public void setSID(String sID) {
		SID = sID;
	}
	/**
	 * @return the sNAME
	 */
	public String getSNAME() {
		return SNAME;
	}
	/**
	 * @param sNAME the sNAME to set
	 */
	public void setSNAME(String sNAME) {
		SNAME = sNAME;
	}
	/**
	 * @return the gPID
	 */
	public String getGPID() {
		return GPID;
	}
	/**
	 * @param gPID the gPID to set
	 */
	public void setGPID(String gPID) {
		GPID = gPID;
	}
	/**
	 * @return the gPS
	 */
	public String getGPS() {
		return GPS;
	}
	/**
	 * @param gPS the gPS to set
	 */
	public void setGPS(String gPS) {
		GPS = gPS;
	}
	/**
	 * @return the sPACE
	 */
	public String getSPACE() {
		return SPACE;
	}
	/**
	 * @param sPACE the sPACE to set
	 */
	public void setSPACE(String sPACE) {
		SPACE = sPACE;
	}
}
