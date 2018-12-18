package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;
import fp.coffeeshopmanagement.model.ChiTietNguyenLieuPK;

public interface ChiTietNguyenLieuService {
//	List<ChiTietNguyenLieu> getAllChiTietNguyenLieu();

	List<ChiTietNguyenLieu> getChiTietNguyenLieuByIdThucUong(int idThucUong);

	void saveOrUpdate(ChiTietNguyenLieu ctnl);

//	void deleteChiTietNguyenLieu(int id);
}
