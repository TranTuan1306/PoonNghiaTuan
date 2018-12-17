package fp.coffeeshopmanagement.model;


import javax.persistence.*;

@Entity
@Table(name="chitiethopdongcungcapnguyenlieu")
@IdClass(ChiTietHopDongCungCapNguyenLieuPK.class)
public class ChiTietHopDongCungCapNguyenLieu {
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="mahopdong")
	private int iMaHopDong;
	
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="manguyenlieu")
	private int iMaNguyenLieu;
	
	@Column(name="soluong")
	private int iSoLuong;

	public int getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(int iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}


	public int getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}

	public void setiMaNguyenLieu(int iMaNguyenLieu) {
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
