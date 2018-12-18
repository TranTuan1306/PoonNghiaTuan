package fp.coffeeshopmanagement.model;

import javax.persistence.*;

@Entity
@Table(name="loaikhachhang")
public class LoaiKhachHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="maloaikhachhang")
	private int iMaLoaiKhachHang;
	
	public int getiMaLoaiKhachHang() {
		return iMaLoaiKhachHang;
	}

	public void setiMaLoaiKhachHang(int iMaLoaiKhachHang) {
		this.iMaLoaiKhachHang = iMaLoaiKhachHang;
	}

	public String getsTenLoaiKhachHang() {
		return sTenLoaiKhachHang;
	}

	public void setsTenLoaiKhachHang(String sTenLoaiKhachHang) {
		this.sTenLoaiKhachHang = sTenLoaiKhachHang;
	}

	@Column(name="tenloaikhachhang")
	private String sTenLoaiKhachHang;
}
