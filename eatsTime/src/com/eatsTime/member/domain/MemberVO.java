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

	Long getMemberId() {
		return memberId;
	}

	void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	String getMemberIdentification() {
		return memberIdentification;
	}

	void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}

	String getMemberPw() {
		return memberPw;
	}

	void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	String getMemberName() {
		return memberName;
	}

	void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	String getMemberEmail() {
		return memberEmail;
	}

	void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	String getMemberPhoneNumber() {
		return memberPhoneNumber;
	}

	void setMemberPhoneNumber(String memberPhoneNumber) {
		this.memberPhoneNumber = memberPhoneNumber;
	}

	String getMemberAddress() {
		return memberAddress;
	}

	void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	String getMemberAddressDetail() {
		return memberAddressDetail;
	}

	void setMemberAddressDetail(String memberAddressDetail) {
		this.memberAddressDetail = memberAddressDetail;
	}

	String getMemberGender() {
		return memberGender;
	}

	void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	String getMemberBirthday() {
		return memberBirthday;
	}

	void setMemberBirthday(String memberBirthday) {
		this.memberBirthday = memberBirthday;
	}

	String getMemberGrade() {
		return memberGrade;
	}

	void setMemberGrade(String memberGrade) {
		this.memberGrade = memberGrade;
	}

	String getMemberJoinedDate() {
		return memberJoinedDate;
	}

	void setMemberJoinedDate(String memberJoinedDate) {
		this.memberJoinedDate = memberJoinedDate;
	}

	boolean isMemberStatus() {
		return memberStatus;
	}

	void setMemberStatus(boolean memberStatus) {
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
