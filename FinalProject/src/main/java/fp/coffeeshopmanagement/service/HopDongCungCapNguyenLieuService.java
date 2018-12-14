package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.HopDongCungCapNguyenLieu;

public interface HopDongCungCapNguyenLieuService {
	public List<HopDongCungCapNguyenLieu> getAllHopDongCungCapNguyenLieu();
	
	public HopDongCungCapNguyenLieu getHopDongCungCapNguyenLieuById(int id);
	
	public void saveOrUpdate(HopDongCungCapNguyenLieu hdccnl);
	
	public void deleteHopDongCungCapNguyenLieu(int id);
}
