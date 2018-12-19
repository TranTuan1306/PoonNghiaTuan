	package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="loaihoadon")
public class LoaiHoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="maloaihoadon")
	private int iMaLoaiHoaDon;
	
	public int getiMaLoaiHoaDon() {
		return iMaLoaiHoaDon;
	}

	public void setiMaLoaiHoaDon(int iMaLoaiHoaDon) {
		this.iMaLoaiHoaDon = iMaLoaiHoaDon;
	}

	public String getsTenLoaiHoaDon() {
		return sTenLoaiHoaDon;
	}

	public void setsTenLoaiHoaDon(String sTenLoaiHoaDon) {
		this.sTenLoaiHoaDon = sTenLoaiHoaDon;
	}

	@Column(name="tenloaihoadon")
	private String sTenLoaiHoaDon;
	
	
	
}
