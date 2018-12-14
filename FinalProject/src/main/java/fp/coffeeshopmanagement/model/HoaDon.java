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
@Table(name="hoadon")
public class HoaDon{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int iMaHD;
	
	@Column(name="thoidiem")
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dThoiDiem;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="khachhang", joinColumns = @JoinColumn(name="makhachhang", referencedColumnName="makhachhang"))
	//@Column(name="makh")
	private int iMaKH;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="nhanvien", joinColumns = @JoinColumn(name="manv", referencedColumnName="manv"))
	//@Column(name="manv")
	private int iMaNV;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="loaihoadon", joinColumns = @JoinColumn(name="loaihoadon", referencedColumnName="maloaihoadon"))
	//@Column(name="loaihoadon")
	private int iLoaiHoaDon;

	public int getiMaHD() {
		return iMaHD;
	}

	public void setiMaHD(int iMaHD) {
		this.iMaHD = iMaHD;
	}

	public Date getdThoiDiem() {
		return dThoiDiem;
	}

	public void setdThoiDiem(Date dThoiDiem) {
		this.dThoiDiem = dThoiDiem;
	}

	public int getiMaKH() {
		return iMaKH;
	}

	public void setiMaKH(int iMaKH) {
		this.iMaKH = iMaKH;
	}

	public int getiMaNV() {
		return iMaNV;
	}

	public void setiMaNV(int iMaNV) {
		this.iMaNV = iMaNV;
	}

	public int getiLoaiHoaDon() {
		return iLoaiHoaDon;
	}

	public void setiLoaiHoaDon(int iLoaiHoaDon) {
		this.iLoaiHoaDon = iLoaiHoaDon;
	}

	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
