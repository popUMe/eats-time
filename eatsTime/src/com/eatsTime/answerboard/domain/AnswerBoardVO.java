package com.eatsTime.answerboard.domain;

public class AnswerBoardVO {
	
	private Long ansbId;
	private Long inqbId;
	private String ansbTitle;
	private String ansbContent;
	private String ansbDate;

	public AnswerBoardVO() {;}

	public Long getAnsbId() {
		return ansbId;
	}

	public void setAnsbId(Long ansbId) {
		this.ansbId = ansbId;
	}

	public Long getInqbId() {
		return inqbId;
	}

	public void setInqbId(Long inqbId) {
		this.inqbId = inqbId;
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

	@Override
	public String toString() {
		return "answerBoardVO [ansbId=" + ansbId + ", inqbId=" + inqbId + ", ansbTitle=" + ansbTitle + ", ansbContent="
				+ ansbContent + ", ansbDate=" + ansbDate + "]";
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
		AnswerBoardVO other = (AnswerBoardVO) obj;
		if (ansbId == null) {
			if (other.ansbId != null)
				return false;
		} else if (!ansbId.equals(other.ansbId))
			return false;
		return true;
	}
	
}
