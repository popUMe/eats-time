package com.eatsTime.product.domain;

public class ProductVO {
	
	private Long productId;
	private Long memberId;
	private boolean productCategory;
	private String productName;
	private int productPrice;
	private String productDate;
	private String productExpirationDate;
	private int productStock;
	private String productAddress;
	private String productAddresDetail;
	
	public ProductVO() {;}

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

	public String getProductDate() {
		return productDate;
	}

	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}

	public String getProductExpirationDate() {
		return productExpirationDate;
	}

	public void setProductExpirationDate(String productExpirationDate) {
		this.productExpirationDate = productExpirationDate;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public String getProductAddress() {
		return productAddress;
	}

	public void setProductAddress(String productAddress) {
		this.productAddress = productAddress;
	}

	public String getProductAddresDetail() {
		return productAddresDetail;
	}

	public void setProductAddresDetail(String productAddresDetail) {
		this.productAddresDetail = productAddresDetail;
	}

	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", memberId=" + memberId + ", productCategory=" + productCategory
				+ ", productName=" + productName + ", productPrice=" + productPrice + ", productDate=" + productDate
				+ ", productExpirationDate=" + productExpirationDate + ", productStock=" + productStock
				+ ", productAddress=" + productAddress + ", productAddresDetail=" + productAddresDetail + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((productId == null) ? 0 : productId.hashCode());
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
		ProductVO other = (ProductVO) obj;
		if (productId == null) {
			if (other.productId != null)
				return false;
		} else if (!productId.equals(other.productId))
			return false;
		return true;
	}
	
}
