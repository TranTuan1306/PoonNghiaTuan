package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="chitiethoadon")
public class ChiTietHoaDon {
	@Column(name="mahd")
	private int iMaHD;
	
	@Column(name="mathucuong")
	private int iMaThucUong;
	
	@Column(name="soluong")
	private int iSoLuong;

	public int getiMaHD() {
		return iMaHD;
	}

	public void setiMaHD(int iMaHD) {
		this.iMaHD = iMaHD;
	}

	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

	public int getiSoLuong() {
		return iSoLuong;
	}

	public void setiSoLuong(int iSoLuong) {
		this.iSoLuong = iSoLuong;
	}

	public ChiTietHoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
