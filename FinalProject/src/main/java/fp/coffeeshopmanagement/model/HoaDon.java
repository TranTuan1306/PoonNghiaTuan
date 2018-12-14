package fp.coffeeshopmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="hoadon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int iMaHD;
	
	@Column(name="thoidiem")
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dThoiDiem;
	
	@Column(name="makh")
	private int iMaKH;
	
	@Column(name="manv")
	private int iMaNV;
	
	@Column(name="loaihoadon")
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
