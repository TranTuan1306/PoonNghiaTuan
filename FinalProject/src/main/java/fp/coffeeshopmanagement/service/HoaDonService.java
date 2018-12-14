package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.HoaDon;

public interface HoaDonService {
	public List<HoaDon> getAllHoaDon();
	
	public HoaDon getHoaDonById(int id);
	
	public void saveOrUpdate(HoaDon hd);
	
	public void deleteHoaDon(int id);
}
