package fp.coffeeshopmanagement.model;

import javax.persistence.*;

@Entity
@Table(name="chitiethoadon")
@IdClass(ChiTietHoaDonPK.class)
public class ChiTietHoaDon{

	@Id
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "mahd")
	private HoaDon iMaHD;
	
	@Id
	@ManyToOne(cascade = CascadeType.REFRESH)
	@JoinColumn(name = "mathucuong")
	private ThucUong iMaThucUong;
	
	@Column(name="soluong")
	private int iSoLuong;

	public HoaDon getiMaHD() {
		return iMaHD;
	}

	public void setiMaHD(HoaDon iMaHD) {
		this.iMaHD = iMaHD;
	}

	public ThucUong getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(ThucUong iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

	public int getiSoLuong() {
		return iSoLuong;
	}

	public void setiSoLuong(int iSoLuong) {
		this.iSoLuong = iSoLuong;
	}

	public ChiTietHoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
