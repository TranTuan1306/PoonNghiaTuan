package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.NhanVien;

public interface NhanVienService {
	public List<NhanVien> getAllNhanVien();

	public NhanVien getNhanVienById(int id);

	public void saveOrUpdate(NhanVien nhanvien);

	public void deleteNhanVien(int id);
}
