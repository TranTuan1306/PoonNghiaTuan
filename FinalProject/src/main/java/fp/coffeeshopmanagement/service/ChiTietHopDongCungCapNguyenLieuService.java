package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieu;

public interface ChiTietHopDongCungCapNguyenLieuService {
	//List<ChiTietHopDongCungCapNguyenLieu> getAllChiTietHopDongCungCapNguyenLieu();
	
	List<ChiTietHopDongCungCapNguyenLieu> getChiTietHopDongCungCapNguyenLieuById(int idHopDong);
	
	void saveOrUpdate(ChiTietHopDongCungCapNguyenLieu cthdccnl);

//	public void deleteChiTietHopDongCungCapNguyenLieu(int id);
}
