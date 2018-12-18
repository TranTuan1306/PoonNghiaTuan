package fp.coffeeshopmanagement.model;

import javax.persistence.*;

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
