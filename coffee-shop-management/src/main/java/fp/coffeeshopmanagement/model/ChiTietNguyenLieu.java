package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="chitietnguyenlieu")
public class ChiTietNguyenLieu {
	@Id
	@Column(name="MaThucUong")
	private int iMaThucUong;
	
	@Id
	@Column(name="MaNguyenLieu")
	private int iMaNguyenLieu;

	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

	public int getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}

	public void setiMaNguyenLieu(int iMaNguyenLieu) {
		this.iMaNguyenLieu = iMaNguyenLieu;
	}

	public ChiTietNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
