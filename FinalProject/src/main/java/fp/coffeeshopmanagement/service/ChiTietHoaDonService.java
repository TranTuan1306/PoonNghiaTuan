package fp.coffeeshopmanagement.service;

import java.util.List;
import fp.coffeeshopmanagement.model.ChiTietHoaDon;

public interface ChiTietHoaDonService {
//	public List<ChiTietHoaDon> getAllChiTietHoaDon();

	public List<ChiTietHoaDon> getChiTietHoaDonById(int idHD);

	public void saveOrUpdate(ChiTietHoaDon cthd);

//	public void deleteChiTietHoaDon(int idHD, int idThucUong);
}
