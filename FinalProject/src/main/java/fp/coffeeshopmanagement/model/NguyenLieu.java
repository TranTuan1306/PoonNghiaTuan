package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nguyenlieu")
public class NguyenLieu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="manguyenlieu")
	private int iMaNguyenLieu;
	
	@Column(name="tennguyenlieu")
	private String sTenNguyenLieu;
	
	@Column(name="madonvi")
	private String sDonVi;
	
	@Column(name="giatien")
	private int iGiaTien;

	public int getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}

	public void setiMaNguyenLieu(int iMaNguyenLieu) {
		this.iMaNguyenLieu = iMaNguyenLieu;
	}

	public String getsTenNguyenLieu() {
		return sTenNguyenLieu;
	}

	public void setsTenNguyenLieu(String sTenNguyenLieu) {
		this.sTenNguyenLieu = sTenNguyenLieu;
	}

	public String getsDonVi() {
		return sDonVi;
	}

	public void setsDonVi(String sDonVi) {
		this.sDonVi = sDonVi;
	}

	public int getiGiaTien() {
		return iGiaTien;
	}

	public void setiGiaTien(int iGiaTien) {
		this.iGiaTien = iGiaTien;
	}
	
}
