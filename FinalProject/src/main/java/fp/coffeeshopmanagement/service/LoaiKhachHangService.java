package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.LoaiKhachHang;

public interface LoaiKhachHangService {
	
	public List<LoaiKhachHang> getAllLoaiKhachHang();

	public LoaiKhachHang getLoaiKhachHangById(int id);

	public void saveOrUpdate(LoaiKhachHang loaikhachhang);

	public void deleteLoaiKhachHang(int id);
}
