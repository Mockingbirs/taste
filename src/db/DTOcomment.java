package db;

public class DTOcomment {
	
	private String cno;
	private String cbno;
	private String cmid;
	private String ccomment;
	private String cfavorite;
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCbno() {
		return cbno;
	}
	public void setCbno(String cbno) {
		this.cbno = cbno;
	}
	public String getCmid() {
		return cmid;
	}
	public void setCmid(String cmid) {
		this.cmid = cmid;
	}
	public String getCcomment() {
		return ccomment;
	}
	public void setCcomment(String ccomment) {
		this.ccomment = ccomment;
	}
	public String getCfavorite() {
		return cfavorite;
	}
	public void setCfavorite(String cfavorite) {
		this.cfavorite = cfavorite;
	}
	public DTOcomment(String cno, String cbno, String cmid, String ccomment, String cfavorite) {
		super();
		this.cno = cno;
		this.cbno = cbno;
		this.cmid = cmid;
		this.ccomment = ccomment;
		this.cfavorite = cfavorite;
	}
	
	
	
	

}
