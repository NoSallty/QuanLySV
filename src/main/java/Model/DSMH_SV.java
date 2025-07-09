package Model;

public class DSMH_SV {
	private String mahp;
	private String tenhp;
	private String malop;
	private int hocki;
	private double sotinchi;
	private double diem;
	private String trangthaihoc;
	
	public DSMH_SV()
	{
		super();
	}
	
	public DSMH_SV(String mahp, String tenhp, String malop, int hocki, double sotinchi, double diem,
			String trangthaihoc) {
		super();
		this.mahp = mahp;
		this.tenhp = tenhp;
		this.malop = malop;
		this.hocki = hocki;
		this.sotinchi = sotinchi;
		this.diem = diem;
		this.trangthaihoc = trangthaihoc;
	}

	public String getMahp() {
		return mahp;
	}

	public void setMahp(String mahp) {
		this.mahp = mahp;
	}

	public String getTenhp() {
		return tenhp;
	}

	public void setTenhp(String tenhp) {
		this.tenhp = tenhp;
	}

	public String getMalop() {
		return malop;
	}

	public void setMalop(String malop) {
		this.malop = malop;
	}

	public int getHocki() {
		return hocki;
	}

	public void setHocki(int hocki) {
		this.hocki = hocki;
	}

	public double getSotinchi() {
		return sotinchi;
	}

	public void setSotinchi(double sotinchi) {
		this.sotinchi = sotinchi;
	}

	public double getDiem() {
		return diem;
	}

	public void setDiem(double diem) {
		this.diem = diem;
	}

	public String getTrangthaihoc() {
		return trangthaihoc;
	}

	public void setTrangthaihoc(String trangthaihoc) {
		this.trangthaihoc = trangthaihoc;
	}

	@Override
	public String toString() {
		return "DSMH_SV [mahp=" + mahp + ", tenhp=" + tenhp + ", malop=" + malop + ", hocki=" + hocki + ", sotinchi="
				+ sotinchi + ", diem=" + diem + ", trangthaihoc=" + trangthaihoc + "]";
	}
	
	
	
}
