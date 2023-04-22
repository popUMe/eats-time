package com.eatsTime.notificationboard.domain;

public class NotificationBoardVO {
	
	private Long notbId;
	private Long memberId;
	private String notbTitle;
	private String notbContent;
	private String notbDate;
	private int notbHit;
	
	public NotificationBoardVO() {;}

	public Long getNotbId() {
		return notbId;
	}

	public void setNotbId(Long notbId) {
		this.notbId = notbId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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

	@Override
	public String toString() {
		return "NotificationBoardVO [notbId=" + notbId + ", memberId=" + memberId + ", notbTitle=" + notbTitle
				+ ", notbContent=" + notbContent + ", notbDate=" + notbDate + ", notbHit=" + notbHit + "]";
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
		NotificationBoardVO other = (NotificationBoardVO) obj;
		if (notbId == null) {
			if (other.notbId != null)
				return false;
		} else if (!notbId.equals(other.notbId))
			return false;
		return true;
	}
	
}
