package com.ftg.product.pojo;

import java.util.Date;

/**
* Date:2019年10月24日
* Functions:com.ftg.product.pojo.Plan.java
**/

//生产人员的计划
public class PlanSc {
	
	//生产计划表
	private String PID;
	private String PNAME;
	private String UID;
	
	private String PDATE;
	private String PCOUNT;
	private String PSTATUS;
	private String PSUBMIT;
	private String PBACK;
	private String GID;
	
	//提交审核的时间
	private Date PLTIME;
	
	//计划退回的时间
		private Date PBTIME;
	
	
	
	

	/**
		 * @return the pLTIME
		 */
		public Date getPLTIME() {
			return PLTIME;
		}

		/**
		 * @param pLTIME the pLTIME to set
		 */
		public void setPLTIME(Date pLTIME) {
			PLTIME = pLTIME;
		}

		/**
		 * @return the pBTIME
		 */
		public Date getPBTIME() {
			return PBTIME;
		}

		/**
		 * @param pBTIME the pBTIME to set
		 */
		public void setPBTIME(Date pBTIME) {
			PBTIME = pBTIME;
		}

	//用户表，伪字段
	private String UNAME;
	
	//商品表
	private String GNAME;

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
	 * @return the uID
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

}
