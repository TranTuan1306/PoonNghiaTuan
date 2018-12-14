package fp.coffeeshopmanagement.model;

import java.io.Serializable;

public class ChiTietNguyenLieuPK implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3998194847484978336L;
	
	private int iMaThucUong;
	private int iMaNguyenLieu;
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + iMaNguyenLieu;
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
		ChiTietNguyenLieuPK other = (ChiTietNguyenLieuPK) obj;
		if (iMaNguyenLieu != other.iMaNguyenLieu)
			return false;
		if (iMaThucUong != other.iMaThucUong)
			return false;
		return true;
	}
	
	
}
