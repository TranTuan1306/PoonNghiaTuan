package fp.coffeeshopmanagement.model;

import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HoaDon")
public class HoaDon {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int iMaHD;
	
	@Column(name="ThoiDiem")
	private Timestamp tsThoiDiem;
	
	@Column(name="MaKH")
	private int iMaKH;
	
	@Column(name="MaNV")
	private int iMaNV;
	
	@Column(name="LoaiHoaDon")
	private int iLoaiHoaDon;

	public int getiMaHD() {
		return iMaHD;
	}

	public void setiMaHD(int iMaHD) {
		this.iMaHD = iMaHD;
	}

	public Timestamp getTsThoiDiem() {
		return tsThoiDiem;
	}

	public void setDtThoiDiem(Timestamp tsThoiDiem) {
		this.tsThoiDiem = tsThoiDiem;
	}

	public int getiMaKH() {
		return iMaKH;
	}

	public void setiMaKH(int iMaKH) {
		this.iMaKH = iMaKH;
	}

	public int getiMaNV() {
		return iMaNV;
	}

	public void setiMaNV(int iMaNV) {
		this.iMaNV = iMaNV;
	}

	public int getiLoaiHoaDon() {
		return iLoaiHoaDon;
	}

	public void setiLoaiHoaDon(int iLoaiHoaDon) {
		this.iLoaiHoaDon = iLoaiHoaDon;
	}

	public HoaDon() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
