package com.eatsTime.sale.domain;

public class SaleVO {
	
	private Long saleId;
	private Long memberId;
	private Long productId;
	private String saleTitle;
	private String saleContent;
	private String saleDate;
	
	public SaleVO() {;}

	public Long getSaleId() {
		return saleId;
	}

	public void setSaleId(Long saleId) {
		this.saleId = saleId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getSaleTitle() {
		return saleTitle;
	}

	public void setSaleTitle(String saleTitle) {
		this.saleTitle = saleTitle;
	}

	public String getSaleContent() {
		return saleContent;
	}

	public void setSaleContent(String saleContent) {
		this.saleContent = saleContent;
	}

	public String getSaleDate() {
		return saleDate;
	}

	public void setSaleDate(String saleDate) {
		this.saleDate = saleDate;
	}

	@Override
	public String toString() {
		return "SaleVO [saleId=" + saleId + ", memberId=" + memberId + ", productId=" + productId + ", saleTitle="
				+ saleTitle + ", saleContent=" + saleContent + ", saleDate=" + saleDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((saleId == null) ? 0 : saleId.hashCode());
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
		SaleVO other = (SaleVO) obj;
		if (saleId == null) {
			if (other.saleId != null)
				return false;
		} else if (!saleId.equals(other.saleId))
			return false;
		return true;
	}
	
}
