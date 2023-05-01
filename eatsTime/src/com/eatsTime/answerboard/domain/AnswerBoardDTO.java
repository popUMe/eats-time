package com.eatsTime.answerboard.domain;

public class AnswerBoardDTO {

	
	private Long ansbId;
	private String ansbTitle;
	private String ansbContent;
	private String ansbDate;
	private Long inqbId;
	private String inqbComplete;
	

	private String inqbTitle ;
	private String inqbContent;
	private String inqbDate;
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

	public String getInqbComplete() {
		return inqbComplete;
	}
	public void setInqbComplete(String inqbComplete) {
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
		result = prime * result + ((ansbId == null) ? 0 : ansbId.hashCode());
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
		if (ansbId == null) {
			if (other.ansbId != null)
				return false;
		} else if (!ansbId.equals(other.ansbId))
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
