package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieu;

public interface ChiTietHopDongCungCapNguyenLieuService {
	public List<ChiTietHopDongCungCapNguyenLieu> getAllChiTietHopDongCungCapNguyenLieu();
	
	public ChiTietHopDongCungCapNguyenLieu getChiTietHopDongCungCapNguyenLieuById(int id);
	
	public void saveOrUpdate(ChiTietHopDongCungCapNguyenLieu cthdccnl);

	public void deleteChiTietHopDongCungCapNguyenLieu(int id);
}
