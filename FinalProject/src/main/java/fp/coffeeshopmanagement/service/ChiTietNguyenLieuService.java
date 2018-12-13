package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;

public interface ChiTietNguyenLieuService {
public List<ChiTietNguyenLieu> getAllChiTietNguyenLieu();
	
	public ChiTietNguyenLieu getChiTietNguyenLieuById(int id);
	
	public void saveOrUpdate(ChiTietNguyenLieu ctnl);

	public void deleteChiTietNguyenLieu(int id);
}
