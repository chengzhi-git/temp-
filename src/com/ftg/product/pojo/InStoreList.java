package com.ftg.product.pojo;

import java.util.Date;

/**
* Date:2019年10月24日
* Functions:com.ftg.product.pojo.InStoreList.java
**/

public class InStoreList {

	private String ISLID;//入库ID
	private String ISID	;//入库单ID
	private String ISNAME	;//入库单名称
	private String PID;//生产计划ID
	private String PNAME;//生产计划名称
	private String GPID;//货位ID
	private String GPS;//货位空间
	
	private String ISLGUI;//规格
	private String ISLCOUNT;//入库商品数量
	private Date ISLDATE;//入库日期
	
	
	
	
	
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
	 * @return the pNAME
	 */
	public String getPNAME() {
		return PNAME;
	}
	/**
	 * @param pNAME the pNAME to set
	 */
	public void setPNAME(String pNAME) {
		PNAME = pNAME;
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
	 * @return the iSLID
	 */
	public String getISLID() {
		return ISLID;
	}
	/**
	 * @param iSLID the iSLID to set
	 */
	public void setISLID(String iSLID) {
		ISLID = iSLID;
	}
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
	 * @return the iSLGUI
	 */
	public String getISLGUI() {
		return ISLGUI;
	}
	/**
	 * @param iSLGUI the iSLGUI to set
	 */
	public void setISLGUI(String iSLGUI) {
		ISLGUI = iSLGUI;
	}
	/**
	 * @return the iSLCOUNT
	 */
	public String getISLCOUNT() {
		return ISLCOUNT;
	}
	/**
	 * @param iSLCOUNT the iSLCOUNT to set
	 */
	public void setISLCOUNT(String iSLCOUNT) {
		ISLCOUNT = iSLCOUNT;
	}
	/**
	 * @return the iSLDATE
	 */
	public Date getISLDATE() {
		return ISLDATE;
	}
	/**
	 * @param iSLDATE the iSLDATE to set
	 */
	public void setISLDATE(Date iSLDATE) {
		ISLDATE = iSLDATE;
	}
	public String getGPID() {
		return GPID;
	}
	public void setGPID(String gPID) {
		GPID = gPID;
	}
}
