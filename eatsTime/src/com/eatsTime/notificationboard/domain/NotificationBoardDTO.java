package com.eatsTime.notificationboard.domain;

public class NotificationBoardDTO {
	private Long notbId;
	private String notbTitle;
	private String notbContent;
	private String notbDate;
	private int notbHit;
	private Long memberId;
	private String memberName;
	
	public Long getNotbId() {
		return notbId;
	}
	public void setNotbId(Long notbId) {
		this.notbId = notbId;
	}
	public String getNotbTitle() {
		return notbTitle;
	}
	public void setNotbTitle(String notbTitle) {
		this.notbTitle = notbTitle;
	}
	public String getNotbContent() {
		return notbContent;
	}
	public void setNotbContent(String notbContent) {
		this.notbContent = notbContent;
	}
	public String getNotbDate() {
		return notbDate;
	}
	public void setNotbDate(String notbDate) {
		this.notbDate = notbDate;
	}
	public int getNotbHit() {
		return notbHit;
	}
	public void setNotbHit(int notbHit) {
		this.notbHit = notbHit;
	}
	public Long getMemberId() {
		return memberId;
	}
	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	
	@Override
	public String toString() {
		return "NotificationBoardDTO [notbId=" + notbId + ", notbTitle=" + notbTitle + ", notbContent=" + notbContent
				+ ", notbDate=" + notbDate + ", notbHit=" + notbHit + ", memberId=" + memberId + ", memberName="
				+ memberName + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((notbId == null) ? 0 : notbId.hashCode());
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
		NotificationBoardDTO other = (NotificationBoardDTO) obj;
		if (notbId == null) {
			if (other.notbId != null)
				return false;
		} else if (!notbId.equals(other.notbId))
			return false;
		return true;
	}
	
	
	
	
	
}
