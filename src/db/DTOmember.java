package db;

public class DTOmember {
	
	private String mno;
	private String mname;
	private String mid;
	private String mpass;
	private String mtel;
	private String memail;
	private String mgender;
	private String mbirthday;
	private String myear;
	private String maddr;
	private String mlevel;	
	private String mdate;
	
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMbirthday() {
		return mbirthday;
	}
	public void setMbirthday(String mbirthday) {
		this.mbirthday = mbirthday;
	}
	public String getMyear() {
		return myear;
	}
	public void setMyear(String myear) {
		this.myear = myear;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public DTOmember(String mno, String mname, String mid, String mpass, String mtel, String memail, String mgender,
			String mbirthday, String myear, String maddr, String mlevel, String mdate) {
		super();
		this.mno = mno;
		this.mname = mname;
		this.mid = mid;
		this.mpass = mpass;
		this.mtel = mtel;
		this.memail = memail;
		this.mgender = mgender;
		this.mbirthday = mbirthday;
		this.myear = myear;
		this.maddr = maddr;
		this.mlevel = mlevel;
		this.mdate = mdate;
	}
	
	
	
	
	
	
}