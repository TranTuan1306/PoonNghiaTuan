package fp.coffeeshopmanagement.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="chitiethopdongcungcapnguyenlieu")
public class ChiTietHopDongCungCapNguyenLieu {
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="hopdongcungcapnguyenlieu", joinColumns = @JoinColumn(name="mahd", referencedColumnName="mahd"))
	//@Column(name="mahopdong")
	private int iMaHopDong;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="nguyenlieu", joinColumns = @JoinColumn(name="manguyenlieu", referencedColumnName="manguyenlieu"))
	//@JoinColumn(name="manguyenlieu")
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
