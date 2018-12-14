package fp.coffeeshopmanagement.model;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="chitiethopdongcungcapnguyenlieu")
@IdClass(ChiTietHopDongCungCapNguyenLieuPK.class)
public class ChiTietHopDongCungCapNguyenLieu {
	@Id
	@Column(name="mahopdong")
	private int iMaHopDong;
	
	@Id
	@Column(name="manguyenlieu")
	private int iMaNguyenLieu;
	
	@Column(name="soluong")
	private int iSoLuong;

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = HopDongCungCapNguyenLieu.class, fetch = FetchType.LAZY)
	@JoinColumn(name="mahopdong", foreignKey = @ForeignKey(name="fk_chitiethopdongcungcapnguyenlieu_hopdongcungcapnguyenlieu"))
	public int getiMaHopDong() {
		return iMaHopDong;
	}

	public void setiMaHopDong(int iMaHopDong) {
		this.iMaHopDong = iMaHopDong;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = NguyenLieu.class, fetch = FetchType.LAZY)
	@JoinColumn(name="manguyenlieu", foreignKey = @ForeignKey(name="fk_chitiethopdongcungcapnguyenlieu_nguyenlieu"))
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
