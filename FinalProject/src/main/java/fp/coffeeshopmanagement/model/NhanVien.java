package fp.coffeeshopmanagement.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="nhanvien")
public class NhanVien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="congviec", joinColumns = @JoinColumn(name="macv", referencedColumnName="macv"))
	private int iMaNhanVien;
	
	@Column(name="hoten")
	private String sHoTen;	
	
	@Column(name="gioitinh")
	private String sGioiTinh;
	
	@Column(name="tuoi")
	private int iTuoi;
	
	public int getiMaNhanVien() {
		return iMaNhanVien;
	}

	public void setiMaNhanVien(int iMaNhanVien) {
		this.iMaNhanVien = iMaNhanVien;
	}

	public String getsHoTen() {
		return sHoTen;
	}

	public void setsHoTen(String sHoTen) {
		this.sHoTen = sHoTen;
	}

	public String getsGioiTinh() {
		return sGioiTinh;
	}

	public void setsGioiTinh(String sGioiTinh) {
		this.sGioiTinh = sGioiTinh;
	}

	public int getiTuoi() {
		return iTuoi;
	}

	public void setiTuoi(int iTuoi) {
		this.iTuoi = iTuoi;
	}

	public String getsDiaChi() {
		return sDiaChi;
	}

	public void setsDiaChi(String sDiaChi) {
		this.sDiaChi = sDiaChi;
	}

	public Date getdThoiDiem() {
		return dThoiDiem;
	}

	public void setdThoiDiem(Date dThoiDiem) {
		this.dThoiDiem = dThoiDiem;
	}

	public int getiLuong() {
		return iLuong;
	}

	public void setiLuong(int iLuong) {
		this.iLuong = iLuong;
	}

	public String getsTaiKhoan() {
		return sTaiKhoan;
	}

	public void setsTaiKhoan(String sTaiKhoan) {
		this.sTaiKhoan = sTaiKhoan;
	}

	public String getsMatKhau() {
		return sMatKhau;
	}

	public void setsMatKhau(String sMatKhau) {
		this.sMatKhau = sMatKhau;
	}

	public int getiMaCV() {
		return iMaCV;
	}

	public void setiMaCV(int iMaCV) {
		this.iMaCV = iMaCV;
	}

	public boolean isbTrangThai() {
		return bTrangThai;
	}

	public void setbTrangThai(boolean bTrangThai) {
		this.bTrangThai = bTrangThai;
	}

	@Column(name="diachi")
	private String sDiaChi;
	
	@Column(name="ngaybatdau")
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dThoiDiem;
	
	@Column(name="luong")
	private int iLuong;
	
	@Column(name="taikhoan")
	private String sTaiKhoan;
	
	@Column(name="matkhau")
	private String sMatKhau;
	
	@Column(name="macv")
	private int iMaCV;
	
	@Column(name="loaitaikhoan")
	private boolean bTrangThai;
		
}
