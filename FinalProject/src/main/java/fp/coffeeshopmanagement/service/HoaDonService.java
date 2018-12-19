package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.HoaDon;

public interface HoaDonService {
	boolean isExisting(int idHD);

	List<HoaDon> getAllHoaDon();
	
	HoaDon getHoaDonById(int id);
	
	void saveOrUpdate(HoaDon hd);
	
	void deleteHoaDon(int id);
}
