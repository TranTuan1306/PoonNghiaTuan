package fp.coffeeshopmanagement.model;

import java.io.Serializable;

public class ChiTietHoaDonPK implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6535341852895312476L;
	
	private int iMaHD;
	private int iMaThucUong;
	
	public int getiMaHD() {
		return iMaHD;
	}
	public void setiMaHD(int iMaHD) {
		this.iMaHD = iMaHD;
	}
	public int getiMaThucUong() {
		return iMaThucUong;
	}
	public void setiMaThucUong(int iMaThucUong) {
		this.iMaThucUong = iMaThucUong;
	}
	public ChiTietHoaDonPK() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietHoaDonPK(int iMaHD, int iMaThucUong) {
		super();
		this.iMaHD = iMaHD;
		this.iMaThucUong = iMaThucUong;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + iMaHD;
		result = prime * result + iMaThucUong;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ChiTietHoaDonPK other = (ChiTietHoaDonPK) obj;
		if (iMaHD != other.iMaHD)
			return false;
		if (iMaThucUong != other.iMaThucUong)
			return false;
		return true;
	}
	
	
}
