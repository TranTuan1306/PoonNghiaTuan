package fp.coffeeshopmanagement.model;

import java.io.Serializable;

public class ChiTietHopDongCungCapNguyenLieuPK implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8226976822735308063L;
	
	private int iMaHopDong;
	private int iMaNguyenLieu;
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + iMaHopDong;
		result = prime * result + iMaNguyenLieu;
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
		ChiTietHopDongCungCapNguyenLieuPK other = (ChiTietHopDongCungCapNguyenLieuPK) obj;
		if (iMaHopDong != other.iMaHopDong)
			return false;
		if (iMaNguyenLieu != other.iMaNguyenLieu)
			return false;
		return true;
	}
	
	
}
