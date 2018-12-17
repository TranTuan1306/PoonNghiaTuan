package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nhacungcap")
public class NhaCungCap {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="manhacungcap")
	private int iMaNhaCungCap;
	
	public int getiMaNhaCungCap() {
		return iMaNhaCungCap;
	}

	public void setiMaNhaCungCap(int iMaNhaCungCap) {
		this.iMaNhaCungCap = iMaNhaCungCap;
	}

	public String getsTenNhaCungCap() {
		return sTenNhaCungCap;
	}

	public void setsTenNhaCungCap(String sTenNhaCungCap) {
		this.sTenNhaCungCap = sTenNhaCungCap;
	}

	public String getsDiaChi() {
		return sDiaChi;
	}

	public void setsDiaChi(String sDiaChi) {
		this.sDiaChi = sDiaChi;
	}

	public String getsSoDienThoai() {
		return sSoDienThoai;
	}

	public void setsSoDienThoai(String sSoDienThoai) {
		this.sSoDienThoai = sSoDienThoai;
	}

	@Column(name="tennhacungcap")
	private String sTenNhaCungCap;
	
	@Column(name="diachi")
	private String sDiaChi;
	
	@Column(name="sodienthoai")
	private String sSoDienThoai;
	
}	
