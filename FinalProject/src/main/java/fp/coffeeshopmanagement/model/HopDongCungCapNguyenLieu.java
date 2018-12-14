package fp.coffeeshopmanagement.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="hopdongcungcapnguyenlieu")
public class HopDongCungCapNguyenLieu {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mahopdong")
	private int iMaHopDong;
	
	@Column(name="ngaycungcap")
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dNgayCungCap;
	
	@Column(name="manhaccungcap")
	private int iMaNhaCungCap;
	
	@Column(name="manhanvien")
	private int iMaNhanVien;

	public int getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(int iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}

	public Date getdNgayCungCap() {
		return dNgayCungCap;
	}

	public void setdNgayCungCap(Date dNgayCungCap) {
		this.dNgayCungCap = dNgayCungCap;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = NhaCungCap.class, fetch = FetchType.LAZY)
	@JoinColumn(name="manhacungcap", foreignKey = @ForeignKey(name="fk_hopdongcungcapnguyenlieu_nhacungcap"))
	public int getiMaNhaCungCap() {
		return iMaNhaCungCap;
	}

	public void setiMaNhaCungCap(int iMaNhaCungCap) {
		this.iMaNhaCungCap = iMaNhaCungCap;
	}
	
	@ManyToOne(cascade = CascadeType.ALL, targetEntity = NhanVien.class, fetch = FetchType.LAZY)
	@JoinColumn(name="manhanvien", foreignKey = @ForeignKey(name="fk_hopdongcungcapnguyenlieu_nhanvien"))
	public int getiMaNhanVien() {
		return iMaNhanVien;
	}

	public void setiMaNhanVien(int iMaNhanVien) {
		this.iMaNhanVien = iMaNhanVien;
	}

	public HopDongCungCapNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
