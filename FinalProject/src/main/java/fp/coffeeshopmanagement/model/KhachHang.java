package fp.coffeeshopmanagement.model;

import javax.persistence.CascadeType;
//import java.sql.Date;
//
//import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="khachhang")
public class KhachHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="makhachhang")
	private int iMaKhachHang;
	
	@Column(name="hoten")
	private String sHoTen;	
	
	@Column(name="gioitinh")
	private String sGioiTinh;
	
	@Column(name="diachi")
	private String sDiaChi;
	
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name="maloaikhachhang")
	private LoaiKhachHang iMaLoaiKhachHang;
	
	@Column(name="sodienthoai")
	private int iSoDienThoai;
	
	@Column(name="thanhpho")
	private String sThanhPho;
	
	public String getsGioiTinh() {
		return sGioiTinh;
	}

	public void setsGioiTinh(String sGioiTinh) {
		this.sGioiTinh = sGioiTinh;
	}

	public String getsDiaChi() {
		return sDiaChi;
	}

	public void setsDiaChi(String sDiaChi) {
		this.sDiaChi = sDiaChi;
	}

	public LoaiKhachHang getiMaLoaiKhachHang() {
		return iMaLoaiKhachHang;
	}

	public void setiMaLoaiKhachHang(LoaiKhachHang iLoaiKhachHang) {
		this.iMaLoaiKhachHang = iLoaiKhachHang;
	}

	public int getiSoDienThoai() {
		return iSoDienThoai;
	}

	public void setiSoDienThoai(int iSoDienThoai) {
		this.iSoDienThoai = iSoDienThoai;
	}

	public String getsThanhPho() {
		return sThanhPho;
	}

	public void setsThanhPho(String sThanhPho) {
		this.sThanhPho = sThanhPho;
	}

	public int getiMaKhachHang() {
		return iMaKhachHang;
	}

	public void setiMaKhachHang(int iMaKhachHang) {
		this.iMaKhachHang = iMaKhachHang;
	}

	public String getsHoTen() {
		return sHoTen;
	}

	public void setsHoTen(String sHoTen) {
		this.sHoTen = sHoTen;
	}
	
	public KhachHang() {
		super();
		// TODO Auto-generated constructor stub
	}
}
