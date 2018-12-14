package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.LoaiHoaDon;

public interface LoaiHoaDonService {
	public List<LoaiHoaDon> getAllLoaiHoaDon();

	public LoaiHoaDon getLoaiHoaDonById(int id);

	public void saveOrUpdate(LoaiHoaDon loaihoadon);

	public void deleteLoaiHoaDon(int id);
}	
