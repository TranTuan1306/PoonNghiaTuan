package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.NhanVien;

public interface NhanVienService {
	List<NhanVien> getAllNhanVien();

	NhanVien getNhanVienById(int id);

	void saveOrUpdate(NhanVien nhanvien);

	void deleteNhanVien(int id);
}
