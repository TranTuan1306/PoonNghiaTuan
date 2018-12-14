package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.NhanVien;
import fp.coffeeshopmanagement.repository.NhanVienRepository;

@Service
@Transactional
public class NhanVienServiceImpl {
	@Autowired
	NhanVienRepository nhanvienRepository;

	public List<NhanVien> getAllNhanVien() {
		// TODO Auto-generated method stub
		return (List<NhanVien>) nhanvienRepository.findAll();
	}

	public NhanVien getNhanVienById(int id) {
		// TODO Auto-generated method stub
		return nhanvienRepository.findById(id).get();
	}

	public void saveOrUpdate(NhanVien nhanvien) {
		// TODO Auto-generated method stub
		nhanvienRepository.save(nhanvien);
	}

	public void deleteNhanVien(int id) {
		// TODO Auto-generated method stub
		nhanvienRepository.deleteById(id);
	}
}
