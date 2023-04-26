package com.eatsTime.purchase.domain;

public class PurchaseListDTO {
	
	private Long purId;
	private Long memberId;
	private Long productId;
	private String purDate;
	private String purName;
	private String purPhoneNumber;
	private String purAddress;
	private String purAddressDetail;
	private String purLocation;
	private String purPw;
	private boolean purDeliver;
	private boolean productCategory;
	private String productName;
	private int productPrice;

	public PurchaseListDTO() {;}

	public Long getPurId() {
		return purId;
	}

	public void setPurId(Long purId) {
		this.purId = purId;
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

	public String getPurDate() {
		return purDate;
	}

	public void setPurDate(String purDate) {
		this.purDate = purDate;
	}

	public String getPurName() {
		return purName;
	}

	public void setPurName(String purName) {
		this.purName = purName;
	}

	public String getPurPhoneNumber() {
		return purPhoneNumber;
	}

	public void setPurPhoneNumber(String purPhoneNumber) {
		this.purPhoneNumber = purPhoneNumber;
	}

	public String getPurAddress() {
		return purAddress;
	}

	public void setPurAddress(String purAddress) {
		this.purAddress = purAddress;
	}

	public String getPurAddressDetail() {
		return purAddressDetail;
	}

	public void setPurAddressDetail(String purAddressDetail) {
		this.purAddressDetail = purAddressDetail;
	}

	public String getPurLocation() {
		return purLocation;
	}

	public void setPurLocation(String purLocation) {
		this.purLocation = purLocation;
	}

	public String getPurPw() {
		return purPw;
	}

	public void setPurPw(String purPw) {
		this.purPw = purPw;
	}

	public boolean isPurDeliver() {
		return purDeliver;
	}

	public void setPurDeliver(boolean purDeliver) {
		this.purDeliver = purDeliver;
	}

	public boolean isProductCategory() {
		return productCategory;
	}

	public void setProductCategory(boolean productCategory) {
		this.productCategory = productCategory;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	@Override
	public String toString() {
		return "PurchaseListDTO [purId=" + purId + ", memberId=" + memberId + ", productId=" + productId + ", purDate="
				+ purDate + ", purName=" + purName + ", purPhoneNumber=" + purPhoneNumber + ", purAddress=" + purAddress
				+ ", purAddressDetail=" + purAddressDetail + ", purLocation=" + purLocation + ", purPw=" + purPw
				+ ", purDeliver=" + purDeliver + ", productCategory=" + productCategory + ", productName=" + productName
				+ ", productPrice=" + productPrice + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memberId == null) ? 0 : memberId.hashCode());
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
		PurchaseListDTO other = (PurchaseListDTO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}

}