package fp.coffeeshopmanagement.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MaHopDong")
public class HopDongCungCapNguyenLieu {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int iMaHopDong;
	
	@Column(name="NgayCungCap")
	private Timestamp tsNgayCungCap;
	
	@Column(name="MaNhaCungCap")
	private int iMaNhaCungCap;
	
	@Column(name="MaNhanVien")
	private int iMaNhanVien;

	public int getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(int iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}

	public Timestamp getTsNgayCungCap() {
		return tsNgayCungCap;
	}

	public void setTsNgayCungCap(Timestamp tsNgayCungCap) {
		this.tsNgayCungCap = tsNgayCungCap;
	}

	public int getiMaNhaCungCap() {
		return iMaNhaCungCap;
	}

	public void setiMaNhaCungCap(int iMaNhaCungCap) {
		this.iMaNhaCungCap = iMaNhaCungCap;
	}

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
