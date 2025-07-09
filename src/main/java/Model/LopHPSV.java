package Model;

public class LopHPSV {
	
	private String maLop;
	private int maSV;
	private float diem;
	private String hoDem;
	private String ten;
	private String trangThaiHoc; 

	public LopHPSV() {
		// TODO Auto-generated constructor stub
	}

	public LopHPSV(String maLop, int maSV, float diem, String hoDem, String ten, String trangThaiHoc) {
		super();
		this.maLop = maLop;
		this.maSV = maSV;
		this.diem = diem;
		this.hoDem = hoDem;
		this.ten = ten;
		this.trangThaiHoc = trangThaiHoc;
	}



	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	public int getMaSV() {
		return maSV;
	}

	public void setMaSV(int maSV) {
		this.maSV = maSV;
	}

	public float getDiem() {
		return diem;
	}

	public void setDiem(float diem) {
		this.diem = diem;
	}


	public String getHoDem() {
		return hoDem;
	}


	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}


	public String getTen() {
		return ten;
	}


	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getTrangThaiHoc() {
		return trangThaiHoc;
	}

	public void setTrangThaiHoc(String trangThaiHoc) {
		this.trangThaiHoc = trangThaiHoc;
	}

	@Override
	public String toString() {
		return "LopHPSV [maLop=" + maLop + ", maSV=" + maSV + ", diem=" + diem + ", hoDem=" + hoDem + ", ten=" + ten
				+ ", trangThaiHoc=" + trangThaiHoc + "]";
	}

}
