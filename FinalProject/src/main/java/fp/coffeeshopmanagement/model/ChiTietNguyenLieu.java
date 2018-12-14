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
@Table(name="chitietnguyenlieu")
@IdClass(ChiTietNguyenLieuPK.class)
public class ChiTietNguyenLieu{
	@Id
	@Column(name="mathucuong")
	private int iMaThucUong;
	
	@Id
	@Column(name="manguyenlieu")
	private int iMaNguyenLieu;

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = ThucUong.class, fetch = FetchType.LAZY)
	@JoinColumn(name="mathucuong", foreignKey = @ForeignKey(name="fk_chitietnguyenlieu_thucuong"))	
	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = NguyenLieu.class, fetch = FetchType.LAZY)
	@JoinColumn(name="manguyenlieu", foreignKey = @ForeignKey(name="fk_chitietnguyenlieu_nguyenlieu"))
	public int getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}

	public void setiMaNguyenLieu(int iMaNguyenLieu) {
		this.iMaNguyenLieu = iMaNguyenLieu;
	}

	public ChiTietNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
