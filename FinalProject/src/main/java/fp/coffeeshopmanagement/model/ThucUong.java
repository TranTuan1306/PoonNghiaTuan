package fp.coffeeshopmanagement.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

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
	
	@Column(name="maloaithucuong")
	private int iMaLoaiThucUong;
	
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

	@ManyToOne(cascade = CascadeType.ALL, targetEntity = DanhMucThucUong.class, fetch = FetchType.LAZY)
	@JoinColumn(name="maloaithucuong", foreignKey = @ForeignKey(name="fk_thucuong_danhmucthucuong"))
	public int getiMaLoaiThucUong() {
		return iMaLoaiThucUong;
	}

	public void setiMaLoaiThucUong(int iMaLoaiThucUong) {
		this.iMaLoaiThucUong = iMaLoaiThucUong;
	}

	
	
}
