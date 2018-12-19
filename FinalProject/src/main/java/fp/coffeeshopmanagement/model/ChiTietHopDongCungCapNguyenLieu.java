package fp.coffeeshopmanagement.model;


import javax.persistence.*;

@Entity
@Table(name="chitiethopdongcungcapnguyenlieu")
@IdClass(ChiTietHopDongCungCapNguyenLieuPK.class)
public class ChiTietHopDongCungCapNguyenLieu {
	@Id
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name="mahopdong")
	private HopDongCungCapNguyenLieu iMaHopDong;
	
	@Id
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name="manguyenlieu")
	private NguyenLieu iMaNguyenLieu;
	
	@Column(name="soluong")
	private int iSoLuong;

	public HopDongCungCapNguyenLieu getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(HopDongCungCapNguyenLieu iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}

	public NguyenLieu getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}

	public void setiMaNguyenLieu(NguyenLieu iMaNguyenLieu) {
		this.iMaNguyenLieu = iMaNguyenLieu;
	}

	public int getiSoLuong() {
		return iSoLuong;
	}

	public void setiSoLuong(int iSoLuong) {
		this.iSoLuong = iSoLuong;
	}

	public ChiTietHopDongCungCapNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
