package fp.coffeeshopmanagement.model;


import javax.persistence.*;
@Entity
@Table(name="chitietnguyenlieu")
@IdClass(ChiTietNguyenLieuPK.class)
public class ChiTietNguyenLieu{
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="mathucuong")
	private ThucUong iMaThucUong;
	
	@Id
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="manguyenlieu")
	private NguyenLieu iMaNguyenLieu;

	

	public ThucUong getiMaThucUong() {
		return iMaThucUong;
	}



	public void setiMaThucUong(ThucUong iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}



	public NguyenLieu getiMaNguyenLieu() {
		return iMaNguyenLieu;
	}



	public void setiMaNguyenLieu(NguyenLieu iMaNguyenLieu) {
		this.iMaNguyenLieu = iMaNguyenLieu;
	}



	public ChiTietNguyenLieu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
