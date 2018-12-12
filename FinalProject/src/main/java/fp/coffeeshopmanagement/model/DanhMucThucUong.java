package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="danhmucthucuong", schema="SYS")
public class DanhMucThucUong {
	@Id
	@Column(name="maloaithucuong")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long iMaLoaiThucUong;
	
	@Column(name="tenloaithucuong")
	private String sTenLoaiThucUong;

	public long getiMaLoaiThucUong() {
		return iMaLoaiThucUong;
	}

	public void setiMaLoaiThucUong(int iMaLoaiThucUong) {
		this.iMaLoaiThucUong = iMaLoaiThucUong;
	}

	public String getsTenLoaiThucUong() {
		return sTenLoaiThucUong;
	}

	public void setsTenLoaiThucUong(String sTenLoaiThucUong) {
		this.sTenLoaiThucUong = sTenLoaiThucUong;
	}

	public DanhMucThucUong() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
