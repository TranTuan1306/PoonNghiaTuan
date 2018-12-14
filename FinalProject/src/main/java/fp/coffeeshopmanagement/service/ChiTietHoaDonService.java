package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietHoaDon;

public interface ChiTietHoaDonService {
	public List<ChiTietHoaDon> getAllChiTietHoaDon();

	public ChiTietHoaDon getChiTietHoaDonById(int id);

	public void saveOrUpdate(ChiTietHoaDon cthd);

	public void deleteChiTietHoaDon(int id);
}
