package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;

public interface ChiTietNguyenLieuService {
//	List<ChiTietNguyenLieu> getAllChiTietNguyenLieu();

	List<ChiTietNguyenLieu> getChiTietNguyenLieuById(int idThucUong);

	void saveOrUpdate(ChiTietNguyenLieu ctnl);

//	void deleteChiTietNguyenLieu(int id);
}
