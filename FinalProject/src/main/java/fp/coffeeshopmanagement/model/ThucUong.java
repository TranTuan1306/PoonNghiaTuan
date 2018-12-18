package fp.coffeeshopmanagement.model;

import javax.persistence.*;

@Entity
@Table(name="thucuong")
public class ThucUong{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mathucuong")
	private int iMaThucUong;
	
	@Column(name="tenthucuong")
	private String sTenThucUong;
	
	@Column(name="giathanh")
	private int iGiaThanh;
	
	@Column(name="linkanh")
	private String sLinkAnh;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "maloaithucuong")
	private DanhMucThucUong iMaLoaiThucUong;
	
	public int getiMaThucUong() {
		return iMaThucUong;
	}

	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}

	public String getsTenThucUong() {
		return sTenThucUong;
	}

	public void setsTenThucUong(String sTenThucUong) {
		this.sTenThucUong = sTenThucUong;
	}

	public int getiGiaThanh() {
		return iGiaThanh;
	}

	public void setiGiaThanh(int iGiaThanh) {
		this.iGiaThanh = iGiaThanh;
	}

	public String getsLinkAnh() {
		return sLinkAnh;
	}

	public void setsLinkAnh(String sLinkAnh) {
		this.sLinkAnh = sLinkAnh;
	}

	public DanhMucThucUong getiMaLoaiThucUong() {
		return iMaLoaiThucUong;
	}

	public void setiMaLoaiThucUong(DanhMucThucUong iMaLoaiThucUong) {
		this.iMaLoaiThucUong = iMaLoaiThucUong;
	}
}
