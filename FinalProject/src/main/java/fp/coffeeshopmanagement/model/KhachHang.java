package fp.coffeeshopmanagement.model;

import javax.persistence.CascadeType;
//import java.sql.Date;
//
//import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
//import javax.persistence.JoinColumn;
//import javax.persistence.JoinTable;
//import javax.persistence.ManyToOne;
import javax.persistence.Table;

//import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="khachhang")
public class KhachHang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int iMaKhachHang;
	
	@Column(name="hoten")
	private String sHoTen;	
	
	@Column(name="gioitinh")
	private String sGioiTinh;
	
	@Column(name="diachi")
	private String sDiaChi;
	
	//@Column(name="loaikhachhang")
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="loaikhachhang", joinColumns = @JoinColumn(name="loaikhachhang", referencedColumnName="maloaikhachhang"))
	private int iLoaiKhachHang;
	
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

	public int getiLoaiKhachHang() {
		return iLoaiKhachHang;
	}

	public void setiLoaiKhachHang(int iLoaiKhachHang) {
		this.iLoaiKhachHang = iLoaiKhachHang;
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
}
