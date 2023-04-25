package com.eatsTime.member.domain;

public class MemberVO {
	
	private Long memberId;
	private String memberIdentification;
	private String memberPw;
	private String memberName;
	private String memberEmail;
	private String memberPhoneNumber;
	private String memberAddress;
	private String memberAddressDetail; 
	private String memberGender;
	private String memberBirthday;
	private String memberGrade;
	private String memberJoinedDate;
	private boolean memberStatus;
	
	public MemberVO() {;}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getMemberIdentification() {
		return memberIdentification;
	}

	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}

	public void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public String getMemberAddressDetail() {
		return memberAddressDetail;
	}

	public void setMemberAddressDetail(String memberAddressDetail) {
		this.memberAddressDetail = memberAddressDetail;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberBirthday() {
		return memberBirthday;
	}

	public void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	public String getMemberGrade() {
		return memberGrade;
	}

	public void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	public String getMemberJoinedDate() {
		return memberJoinedDate;
	}

	public void setMemberJoinedDate(String memberJoinedDate) {
		this.memberJoinedDate = memberJoinedDate;
	}

	public boolean isMemberStatus() {
		return memberStatus;
	}

	public void setMemberStatus(boolean memberStatus) {
		this.memberStatus = memberStatus;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberIdentification=" + memberIdentification + ", memberPw="
				+ memberPw + ", memberName=" + memberName + ", memberEmail=" + memberEmail + ", memberPhoneNumber="
				+ memberPhoneNumber + ", memberAddress=" + memberAddress + ", memberAddressDetail="
				+ memberAddressDetail + ", memberGender=" + memberGender + ", memberBirthday=" + memberBirthday
				+ ", memberGrade=" + memberGrade + ", memberJoinedDate=" + memberJoinedDate + ", memberStatus="
				+ memberStatus + "]";
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
		MemberVO other = (MemberVO) obj;
		if (memberId == null) {
			if (other.memberId != null)
				return false;
		} else if (!memberId.equals(other.memberId))
			return false;
		return true;
	}
	
}
