package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import Model.SinhVien;
import Model.TaiKhoan;

public class TaiKhoanDao extends Initialization implements Dao<TaiKhoan> {
	public TaiKhoanDao() {
		super();
	}

	public boolean validate(TaiKhoan loginObject) throws ClassNotFoundException{
		boolean status = false;
		int count=0;
		try {
			PreparedStatement ps = this.getCon().prepareStatement("select * from taikhoan where tentaikhoan = ? and matkhau = ?" );
			ps.setString(1, loginObject.getTentaikhoan());
			ps.setString(2, loginObject.getMatkhau());
			ResultSet rs = ps.executeQuery();
			while(rs.next()) count++;
			if(count > 0) status = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return status;
		
	}

	@Override
	public List<TaiKhoan> getALL() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(TaiKhoan t) {
		
		
	}

	@Override
	public void delete(String t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(TaiKhoan t) {
		// TODO Auto-generated method stub
		
	}
	
	public int registerEmployee(TaiKhoan employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO taikhoan" 
								+ "(hodem, ten, tentaikhoan, matkhau)"
								+ "VALUES(?, ?, ?, ?)";
		int result = 0;
		try
		{
			PreparedStatement preparedStatement = this.getCon().prepareStatement(INSERT_USERS_SQL);
			preparedStatement.setString(1, employee.getHodem());
			preparedStatement.setString(2, employee.getTen());
			preparedStatement.setString(3, employee.getTentaikhoan());
			preparedStatement.setString(4, employee.getMatkhau());
			result = preparedStatement.executeUpdate();
		}
		catch(SQLException e1)
		{
			e1.printStackTrace();
		}
		return result;
		
	}

	@Override
	public int soLuongPage(int sLPT, int sLPTMT) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TaiKhoan> dSPTMotTrang(List<TaiKhoan> dspt, int indexPage, int sLPTMT) {
		// TODO Auto-generated method stub
		return null;
	}
}
