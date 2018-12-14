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
@Table(name="chitiethoadon")
@IdClass(ChiTietHoaDonPK.class)
public class ChiTietHoaDon{
	@Id
	@Column(name="mahd")
	private int iMaHD;
	
	@Id
	@Column(name="mathucuong")
	private int iMaThucUong;
	
	@Column(name="soluong")
	private int iSoLuong;

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = HoaDon.class, fetch = FetchType.LAZY)
	@JoinColumn(name="mahd", foreignKey = @ForeignKey(name="fk_chitiethoadon_hoadon"))
	public int getiMaHD() {
		return iMaHD;
	}

	public void setiMaHD(int iMaHD) {
		this.iMaHD = iMaHD;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = ThucUong.class, fetch =  FetchType.LAZY)
	@JoinColumn(name="mathucuong", foreignKey = @ForeignKey(name="fk_chitiethoadon_thucuong"))
	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
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
