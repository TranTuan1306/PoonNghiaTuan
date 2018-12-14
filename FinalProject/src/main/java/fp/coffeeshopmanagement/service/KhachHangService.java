package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.KhachHang;

public interface KhachHangService {
	public List<KhachHang> getAllKhachHang();

	public KhachHang getKhachHangById(int id);

	public void saveOrUpdate(KhachHang cthd);

	public void deleteKhachHang(int id);
}
