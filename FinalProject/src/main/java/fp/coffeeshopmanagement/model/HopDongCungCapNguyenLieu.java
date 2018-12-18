package fp.coffeeshopmanagement.model;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="hopdongcungcapnguyenlieu")
public class HopDongCungCapNguyenLieu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mahopdong")
	private int iMaHopDong;
	
	@Column(name="ngaycungcap")
	private Date dNgayCungCap = new Date();

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "manhacungcap")
	private NhaCungCap iMaNhaCungCap;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "manv")
	private NhanVien iMaNhanVien;

	public int getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(int iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}

	public Date getdNgayCungCap() {
		return dNgayCungCap;
	}

//	public void setdNgayCungCap(Date dNgayCungCap) {
//		this.dNgayCungCap = dNgayCungCap;
//	}


	public NhaCungCap getiMaNhaCungCap() {
		return iMaNhaCungCap;
	}

	public void setiMaNhaCungCap(NhaCungCap iMaNhaCungCap) {
		this.iMaNhaCungCap = iMaNhaCungCap;
	}

	public NhanVien getiMaNhanVien() {
		return iMaNhanVien;
	}

	public void setiMaNhanVien(NhanVien iMaNhanVien) {
		this.iMaNhanVien = iMaNhanVien;
	}

	public HopDongCungCapNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public HopDongCungCapNguyenLieu(int iMaHopDong){
		this.iMaHopDong = iMaHopDong;
	}
}
