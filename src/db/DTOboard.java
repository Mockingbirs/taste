package db;

public class DTOboard {
	
	private String bno;
	private String btitle;
	private String brname;
	private String brsort;
	private String brprice;
	private String brsite;
	private String braddr;
	private String brfavorite;
	private String bcontent;
	private String bimage;
	private String bauthor;
	private String bdate;
	public String getBno() {
		return bno;
	}
	public void setBno(String bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBrname() {
		return brname;
	}
	public void setBrname(String brname) {
		this.brname = brname;
	}
	public String getBrsort() {
		return brsort;
	}
	public void setBrsort(String brsort) {
		this.brsort = brsort;
	}
	public String getBrprice() {
		return brprice;
	}
	public void setBrprice(String brprice) {
		this.brprice = brprice;
	}
	public String getBrsite() {
		return brsite;
	}
	public void setBrsite(String brsite) {
		this.brsite = brsite;
	}
	public String getBraddr() {
		return braddr;
	}
	public void setBraddr(String braddr) {
		this.braddr = braddr;
	}
	public String getBrfavorite() {
		return brfavorite;
	}
	public void setBrfavorite(String brfavorite) {
		this.brfavorite = brfavorite;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBimage() {
		return bimage;
	}
	public void setBimage(String bimage) {
		this.bimage = bimage;
	}
	public String getBauthor() {
		return bauthor;
	}
	public void setBauthor(String bauthor) {
		this.bauthor = bauthor;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public DTOboard(String bno, String btitle, String brname, String brsort, String brprice, String brsite,
			String braddr, String brfavorite, String bcontent, String bimage, String bauthor, String bdate) {
		super();
		this.bno = bno;
		this.btitle = btitle;
		this.brname = brname;
		this.brsort = brsort;
		this.brprice = brprice;
		this.brsite = brsite;
		this.braddr = braddr;
		this.brfavorite = brfavorite;
		this.bcontent = bcontent;
		this.bimage = bimage;
		this.bauthor = bauthor;
		this.bdate = bdate;
	}
	
	
	
	
	
	
}
