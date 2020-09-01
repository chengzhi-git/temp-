package com.ftg.product.pojo;

import java.util.Date;

public class Tostorelist{

	//商品清单（交库）
	private String TSLID;//交库商品清单ID
	private String TSID;//交库表ID
	private String PID;//生产计划ID
	private String TSLCOUNT;//交库商品清单上传的数量TSLCOUNT
	private Date TSLDATE;//交库时间
	
	//计划表，后期直接携程一个pojo引入对象就可以应该，
	//private String PID;//生产计划ID，已经有了	
	private String PNAME;//生产计划名称
	private String UID;//生产计划用户ID
	private String PDATE;//生产计划创建时间
	private String PCOUNT;//生产计划设置的数量	
	private String PSTATUS;//生产计划完成状态
	private String PSUBMIT;//生产计划提交次数
	private String PBACK;//生产计划驳回次数

	
	//商品表
	private String GNAME;//商品名称
	private String GID;//生产计划商品ID
	
	//用户表
	
	private String UNAME;//人员列表的名称
	
	//规格
	private String GG;
	
	//
	private String TSREN;//交库人
	
	
	
	/**
	 * @return the tSREN
	 */
	public String getTSREN() {
		return TSREN;
	}
	/**
	 * @param tSREN the tSREN to set
	 */
	public void setTSREN(String tSREN) {
		TSREN = tSREN;
	}
	/**
	 * @return the gG
	 */
	public String getGG() {
		return GG;
	}
	/**
	 * @param gG the gG to set
	 */
	public void setGG(String gG) {
		GG = gG;
	}
	/**
	 * @return the gNAME
	 */
	public String getGNAME() {
		return GNAME;
	}
	/**
	 * @param gNAME the gNAME to set
	 */
	public void setGNAME(String gNAME) {
		GNAME = gNAME;
	}
	/**
	 * @return the tSLID
	 */
	public String getTSLID() {
		return TSLID;
	}
	/**
	 * @param tSLID the tSLID to set
	 */
	public void setTSLID(String tSLID) {
		TSLID = tSLID;
	}
	/**
	 * @return the tSID
	 */
	public String getTSID() {
		return TSID;
	}
	/**
	 * @param tSID the tSID to set
	 */
	public void setTSID(String tSID) {
		TSID = tSID;
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
	 * @return the tSLCOUNT
	 */
	public String getTSLCOUNT() {
		return TSLCOUNT;
	}
	/**
	 * @param tSLCOUNT the tSLCOUNT to set
	 */
	public void setTSLCOUNT(String tSLCOUNT) {
		TSLCOUNT = tSLCOUNT;
	}
	/**
	 * @return the tSLDATE
	 */
	public Date getTSLDATE() {
		return TSLDATE;
	}
	/**
	 * @param tSLDATE the tSLDATE to set
	 */
	public void setTSLDATE(Date tSLDATE) {
		TSLDATE = tSLDATE;
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
	 * @return the uSID
	 */
	public String getUID() {
		return UID;
	}
	/**
	 * @param uID the uID to set
	 */
	public void setUID(String uID) {
		UID = uID;
	}
	/**
	 * @return the pDATE
	 */
	public String getPDATE() {
		return PDATE;
	}
	/**
	 * @param pDATE the pDATE to set
	 */
	public void setPDATE(String pDATE) {
		PDATE = pDATE;
	}
	/**
	 * @return the pCOUNT
	 */
	public String getPCOUNT() {
		return PCOUNT;
	}
	/**
	 * @param pCOUNT the pCOUNT to set
	 */
	public void setPCOUNT(String pCOUNT) {
		PCOUNT = pCOUNT;
	}
	/**
	 * @return the pSTATUS
	 */
	public String getPSTATUS() {
		return PSTATUS;
	}
	/**
	 * @param pSTATUS the pSTATUS to set
	 */
	public void setPSTATUS(String pSTATUS) {
		PSTATUS = pSTATUS;
	}
	/**
	 * @return the pSUBMIT
	 */
	public String getPSUBMIT() {
		return PSUBMIT;
	}
	/**
	 * @param pSUBMIT the pSUBMIT to set
	 */
	public void setPSUBMIT(String pSUBMIT) {
		PSUBMIT = pSUBMIT;
	}
	/**
	 * @return the pBACK
	 */
	public String getPBACK() {
		return PBACK;
	}
	/**
	 * @param pBACK the pBACK to set
	 */
	public void setPBACK(String pBACK) {
		PBACK = pBACK;
	}
	/**
	 * @return the gID
	 */
	public String getGID() {
		return GID;
	}
	/**
	 * @param gID the gID to set
	 */
	public void setGID(String gID) {
		GID = gID;
	}
	
	/**
	 * @return the uNAME
	 */
	public String getUNAME() {
		return UNAME;
	}
	/**
	 * @param uNAME the uNAME to set
	 */
	public void setUNAME(String uNAME) {
		UNAME = uNAME;
	}
	
}
