package com.eatsTime.inquiryboard.domain;

public class InquiryBoardDTO {
	private Long inqbId;
	private Long productId;
	private Long memberId;
	private String inqbTitle;
	private String inqbContent;
	private String inqbDate;
	private boolean inqbComplete;
	private String memberIdentification;

	public String getMemberIdentification() {
		return memberIdentification;
	}
	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}
	private Long ansbId;
	private String ansbTitle;
	private String ansbContent;
	private String ansbDate;
	public Long getInqbId() {
		return inqbId;
	}
	public void setInqbId(Long inqbId) {
		this.inqbId = inqbId;
	}
	public Long getProductId() {
		return productId;
	}
	public void setProductId(Long productId) {
		this.productId = productId;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	public String getInqbTitle() {
		return inqbTitle;
	}
	public void setInqbTitle(String inqbTitle) {
		this.inqbTitle = inqbTitle;
	}
	public String getInqbContent() {
		return inqbContent;
	}
	public void setInqbContent(String inqbContent) {
		this.inqbContent = inqbContent;
	}
	public String getInqbDate() {
		return inqbDate;
	}
	public void setInqbDate(String inqbDate) {
		this.inqbDate = inqbDate;
	}
	public boolean isInqbComplete() {
		return inqbComplete;
	}
	public void setInqbComplete(boolean inqbComplete) {
		this.inqbComplete = inqbComplete;
	}
	public Long getAnsbId() {
		return ansbId;
	}
	public void setAnsbId(Long ansbId) {
		this.ansbId = ansbId;
	}
	public String getAnsbTitle() {
		return ansbTitle;
	}
	public void setAnsbTitle(String ansbTitle) {
		this.ansbTitle = ansbTitle;
	}
	public String getAnsbContent() {
		return ansbContent;
	}
	public void setAnsbContent(String ansbContent) {
		this.ansbContent = ansbContent;
	}
	public String getAnsbDate() {
		return ansbDate;
	}
	public void setAnsbDate(String ansbDate) {
		this.ansbDate = ansbDate;
	}
	@Override
	public String toString() {
		return "InquiryBoardDTO [inqbId=" + inqbId + ", productId=" + productId + ", memberId=" + memberId
				+ ", inqbTitle=" + inqbTitle + ", inqbContent=" + inqbContent + ", inqbDate=" + inqbDate
				+ ", inqbComplete=" + inqbComplete + ", ansbId=" + ansbId + ", ansbTitle=" + ansbTitle
				+ ", ansbContent=" + ansbContent + ", ansbDate=" + ansbDate + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((inqbId == null) ? 0 : inqbId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		InquiryBoardDTO other = (InquiryBoardDTO) obj;
		if (inqbId == null) {
			if (other.inqbId != null)
				return false;
		} else if (!inqbId.equals(other.inqbId))
			return false;
		return true;
	}
	
	
	
	
}
