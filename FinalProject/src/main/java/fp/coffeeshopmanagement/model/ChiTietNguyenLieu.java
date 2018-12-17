package fp.coffeeshopmanagement.model;


import javax.persistence.*;
@Entity
@Table(name="chitietnguyenlieu")
@IdClass(ChiTietNguyenLieuPK.class)
public class ChiTietNguyenLieu{
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="mathucuong")
	private int iMaThucUong;
	
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="manguyenlieu")
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
