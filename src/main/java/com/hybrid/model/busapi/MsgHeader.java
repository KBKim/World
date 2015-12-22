package com.hybrid.model.busapi;

public class MsgHeader {
	 String HeaderCd;
	 String headerMsg;
	 Integer itemCount;
	public String getHeaderCd() {
		return HeaderCd;
	}
	public void setHeaderCd(String headerCd) {
		HeaderCd = headerCd;
	}
	public String getHeaderMsg() {
		return headerMsg;
	}
	public void setHeaderMsg(String headerMsg) {
		this.headerMsg = headerMsg;
	}
	public Integer getItemCount() {
		return itemCount;
	}
	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
	 
	 
}
