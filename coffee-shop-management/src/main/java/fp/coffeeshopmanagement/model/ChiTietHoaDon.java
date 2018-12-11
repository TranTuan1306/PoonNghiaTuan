package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="chitiethoadon")
public class ChiTietHoaDon {
	@Id
	@Column(name="MaHD")
	private int iMaHD;
	
	@Id
	@Column(name="MaThucUong")
	private int iMaThucUong;
	
	@Column(name="SoLuong")
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

		