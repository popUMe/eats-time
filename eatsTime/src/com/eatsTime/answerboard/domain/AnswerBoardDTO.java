package com.eatsTime.answerboard.domain;

public class AnswerBoardDTO {
	
	private Long ansbId;
	private String ansbTitle;
	private String ansbContent;
	private String ansbDate;
	private Long inqbId;
	

	private String inqbTitle ;
	private String inqbContent;
	private String inqbDate;
	private boolean inqbComplete;
	private String memberIdentification;
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
	public Long getInqbId() {
		return inqbId;
	}
	public void setInqbId(Long inqbId) {
		this.inqbId = inqbId;
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
	public String getMemberIdentification() {
		return memberIdentification;
	}
	public void setMemberIdentification(String memberIdentification) {
		this.memberIdentification = memberIdentification;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ansbContent == null) ? 0 : ansbContent.hashCode());
		result = prime * result + ((ansbDate == null) ? 0 : ansbDate.hashCode());
		result = prime * result + ((ansbId == null) ? 0 : ansbId.hashCode());
		result = prime * result + ((ansbTitle == null) ? 0 : ansbTitle.hashCode());
		result = prime * result + (inqbComplete ? 1231 : 1237);
		result = prime * result + ((inqbContent == null) ? 0 : inqbContent.hashCode());
		result = prime * result + ((inqbDate == null) ? 0 : inqbDate.hashCode());
		result = prime * result + ((inqbId == null) ? 0 : inqbId.hashCode());
		result = prime * result + ((inqbTitle == null) ? 0 : inqbTitle.hashCode());
		result = prime * result + ((memberIdentification == null) ? 0 : memberIdentification.hashCode());
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
		AnswerBoardDTO other = (AnswerBoardDTO) obj;
		if (ansbContent == null) {
			if (other.ansbContent != null)
				return false;
		} else if (!ansbContent.equals(other.ansbContent))
			return false;
		if (ansbDate == null) {
			if (other.ansbDate != null)
				return false;
		} else if (!ansbDate.equals(other.ansbDate))
			return false;
		if (ansbId == null) {
			if (other.ansbId != null)
				return false;
		} else if (!ansbId.equals(other.ansbId))
			return false;
		if (ansbTitle == null) {
			if (other.ansbTitle != null)
				return false;
		} else if (!ansbTitle.equals(other.ansbTitle))
			return false;
		if (inqbComplete != other.inqbComplete)
			return false;
		if (inqbContent == null) {
			if (other.inqbContent != null)
				return false;
		} else if (!inqbContent.equals(other.inqbContent))
			return false;
		if (inqbDate == null) {
			if (other.inqbDate != null)
				return false;
		} else if (!inqbDate.equals(other.inqbDate))
			return false;
		if (inqbId == null) {
			if (other.inqbId != null)
				return false;
		} else if (!inqbId.equals(other.inqbId))
			return false;
		if (inqbTitle == null) {
			if (other.inqbTitle != null)
				return false;
		} else if (!inqbTitle.equals(other.inqbTitle))
			return false;
		if (memberIdentification == null) {
			if (other.memberIdentification != null)
				return false;
		} else if (!memberIdentification.equals(other.memberIdentification))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "AnswerBoardDTO [ansbId=" + ansbId + ", ansbTitle=" + ansbTitle + ", ansbContent=" + ansbContent
				+ ", ansbDate=" + ansbDate + ", inqbId=" + inqbId + ", inqbTitle=" + inqbTitle + ", inqbContent="
				+ inqbContent + ", inqbDate=" + inqbDate + ", inqbComplete=" + inqbComplete + ", memberIdentification="
				+ memberIdentification + "]";
	}
	
	
	
	
	

};
