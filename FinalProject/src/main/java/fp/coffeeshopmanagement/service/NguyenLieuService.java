package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.NguyenLieu;

public interface NguyenLieuService {
	public List<NguyenLieu> getAllNguyenLieu();

	public NguyenLieu getNguyenLieuById(int id);

	public void saveOrUpdate(NguyenLieu cthd);

	public void deleteNguyenLieu(int id);
}
