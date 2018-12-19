package fp.coffeeshopmanagement.model;


import java.util.Date;

import javax.persistence.CascadeType;
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
@Table(name="hoadon")
public class HoaDon{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mahd")
	private int iMaHD;
	
	@Column(name="thoidiem")
	private Date dThoiDiem = new Date();
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="makh")
	private KhachHang iMaKH;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="manv")
	private NhanVien iMaNV;
	
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="loaihoadon")
	private LoaiHoaDon iLoaiHoaDon;

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
	

	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}

	public KhachHang getiMaKH() {
		return iMaKH;
	}

	public void setiMaKH(KhachHang iMaKH) {
		this.iMaKH = iMaKH;
	}

	public NhanVien getiMaNV() {
		return iMaNV;
	}

	public void setiMaNV(NhanVien iMaNV) {
		this.iMaNV = iMaNV;
	}

	public LoaiHoaDon getiLoaiHoaDon() {
		return iLoaiHoaDon;
	}

	public void setiLoaiHoaDon(LoaiHoaDon iLoaiHoaDon) {
		this.iLoaiHoaDon = iLoaiHoaDon;
	}

//	public void setdThoiDiem(Date dThoiDiem) {
//		this.dThoiDiem = dThoiDiem;
//	}

	public HoaDon(int iMaHD) {
		this.iMaHD = iMaHD;
	}
}
