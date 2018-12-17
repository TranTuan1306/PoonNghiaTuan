package fp.coffeeshopmanagement.service;

import java.util.List;
import fp.coffeeshopmanagement.model.ChiTietHoaDon;
import fp.coffeeshopmanagement.model.HoaDon;

public interface ChiTietHoaDonService {
	//List<ChiTietHoaDon> getAllChiTietHoaDon();

	List<ChiTietHoaDon> getChiTietHoaDonById(int idHD);

	void saveOrUpdate(ChiTietHoaDon cthd);

	//public void deleteChiTietHoaDon(int idHD, int idThucUong);
}
