package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.LoaiKhachHang;
import fp.coffeeshopmanagement.repository.LoaiKhachHangRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class LoaiKhachHangServiceImpl implements LoaiKhachHangService {
	@Autowired
	LoaiKhachHangRepository loaikhachhangRepository;

	public List<LoaiKhachHang> getAllLoaiKhachHang() {
		// TODO Auto-generated method stub
		return (List<LoaiKhachHang>) loaikhachhangRepository.findAll();
	}

	public LoaiKhachHang getLoaiKhachHangById(int id) {
		// TODO Auto-generated method stub
		return loaikhachhangRepository.findById(id).get();
	}

	public void saveOrUpdate(LoaiKhachHang loaikhachhang) {
		// TODO Auto-generated method stub
		loaikhachhangRepository.save(loaikhachhang);
	}

	public void deleteLoaiKhachHang(int id) {
		// TODO Auto-generated method stub
		loaikhachhangRepository.deleteById(id);
	}
}
