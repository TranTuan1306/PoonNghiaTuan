package fp.coffeeshopmanagement.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="chitietnguyenlieu")
public class ChiTietNguyenLieu {
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="thucuong", joinColumns = @JoinColumn(name="mathucuong", referencedColumnName="mathucuong"))
	//@Column(name="mathucuong")
	private int iMaThucUong;
	
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinTable(name="nguyenlieu", joinColumns = @JoinColumn(name="manguyenlieu", referencedColumnName="manguyenlieu"))
	//@Column(name="manguyenlieu")
	private int iMaNguyenLieu;

	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

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
