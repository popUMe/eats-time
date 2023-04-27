package com.eatsTime.main.domain;

public class MainDTO {
	
	private Long productId;
	private Long memberId;
	private boolean productCategory;
	private String productName;
	private int productPrice;
	private String productDate;
	private String productExpirationDate;
	private int productStock;
	private String productAddress;
	private String productAddressDetail;
	   
	   public MainDTO() {;}
	   
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

		public String getProductAddressDetail() {
			return productAddressDetail;
		}

		public void setProductAddressDetail(String productAddressDetail) {
			this.productAddressDetail = productAddressDetail;
		}

		@Override
		public String toString() {
			return "ProductVO [productId=" + productId + ", memberId=" + memberId + ", productCategory=" + productCategory
					+ ", productName=" + productName + ", productPrice=" + productPrice + ", productDate=" + productDate
					+ ", productExpirationDate=" + productExpirationDate + ", productStock=" + productStock
					+ ", productAddress=" + productAddress + ", productAddressDetail=" + productAddressDetail + "]";
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
		    MainDTO other = (MainDTO) obj;
		    if (productId == null) {
		        if (other.productId != null)
		            return false;
		    } else if (!productId.equals(other.productId))
		        return false;
		    if (memberId == null) {
		        if (other.memberId != null)
		            return false;
		    } else if (!memberId.equals(other.memberId))
		        return false;
		    if (productCategory != other.productCategory)
		        return false;
		    if (productName == null) {
		        if (other.productName != null)
		            return false;
		    } else if (!productName.equals(other.productName))
		        return false;
		    if (productPrice != other.productPrice)
		        return false;
		    if (productDate == null) {
		        if (other.productDate != null)
		            return false;
		    } else if (!productDate.equals(other.productDate))
		        return false;
		    if (productExpirationDate == null) {
		        if (other.productExpirationDate != null)
		            return false;
		    } else if (!productExpirationDate.equals(other.productExpirationDate))
		        return false;
		    if (productStock != other.productStock)
		        return false;
		    if (productAddress == null) {
		        if (other.productAddress != null)
		            return false;
		    } else if (!productAddress.equals(other.productAddress))
		        return false;
		    if (productAddressDetail == null) {
		        if (other.productAddressDetail != null)
		            return false;
		    } else if (!productAddressDetail.equals(other.productAddressDetail))
		        return false;
		    return true;
		}
}
		

		

		
