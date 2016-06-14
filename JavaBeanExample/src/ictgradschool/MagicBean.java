package ictgradschool;

import java.io.Serializable;

public class MagicBean implements Serializable {
	
	/** Variable all serializable things have to track version */
	private static final long serialVersionUID = 1L;
	
	/** In this universe we name our magic beans... - all in LOWERCASE! */
	private String name;
	
	/** We also give them some personal identification keyword - all in UPPERCASE! */
	private String PIK;
	
	/** A third variable - in MIXEDCASE! */
	private String whoClimbed;
	
	/** This variable is boolean - changes the getter! */
	private boolean magic;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the PIK
	 */
	public String getPIK() {
		return PIK;
	}

	/**
	 * @param pIK the PIK to set
	 */
	public void setPIK(String pIK) {
		PIK = pIK;
	}

	/**
	 * @return the whoClimbed
	 */
	public String getWhoClimbed() {
		return whoClimbed;
	}

	/**
	 * @param whoClimbed the whoClimbed to set
	 */
	public void setWhoClimbed(String whoClimbed) {
		this.whoClimbed = whoClimbed;
	}

	/**
	 * @return the magic
	 */
	public boolean isMagic() {
		return magic;
	}

	/**
	 * @param magic the magic to set
	 */
	public void setMagic(boolean magic) {
		this.magic = magic;
	}
}
