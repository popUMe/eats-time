package com.eatsTime.inquiryboard.domain;

public class InquiryBoardVO {
	
	private Long inqbId;
	private Long productId;
	private Long memberId;
	private String inqbTitle;
	private String inqbContent;
	private String inqbDate;
	private boolean inqbComplete;

	public InquiryBoardVO() {;}

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

	@Override
	public String toString() {
		return "InquiryVO [inqbId=" + inqbId + ", productId=" + productId + ", memberId=" + memberId + ", inqbTitle="
				+ inqbTitle + ", inqbContent=" + inqbContent + ", inqbDate=" + inqbDate + ", inqbComplete="
				+ inqbComplete + "]";
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
		InquiryBoardVO other = (InquiryBoardVO) obj;
		if (inqbId == null) {
			if (other.inqbId != null)
				return false;
		} else if (!inqbId.equals(other.inqbId))
			return false;
		return true;
	}
	
}
