package Model;

public class TaiKhoan {
	private int ma;
	private String hodem;
	private String ten;
	private String tentaikhoan;
	private String matkhau;
	
	public TaiKhoan() {
	}

	public TaiKhoan(int ma, String hodem, String ten, String tentaikhoan, String matkhau) {
		this.ma = ma;
		this.hodem = hodem;
		this.ten = ten;
		this.tentaikhoan = tentaikhoan;
		this.matkhau = matkhau;
	}

	public int getMa() {
		return ma;
	}

	public void setMa(int ma) {
		this.ma = ma;
	}

	public String getHodem() {
		return hodem;
	}

	public void setHodem(String hodem) {
		this.hodem = hodem;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getTentaikhoan() {
		return tentaikhoan;
	}

	public void setTentaikhoan(String tentaikhoan) {
		this.tentaikhoan = tentaikhoan;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	@Override
	public String toString() {
		return "TaiKhoan [ma=" + ma + ", hodem=" + hodem + ", ten=" + ten + ", tentaikhoan=" + tentaikhoan
				+ ", matkhau=" + matkhau + "]";
	}
	
}
