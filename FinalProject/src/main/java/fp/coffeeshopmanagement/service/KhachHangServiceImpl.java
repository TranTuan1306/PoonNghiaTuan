package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.KhachHang;
import fp.coffeeshopmanagement.repository.KhachHangRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class KhachHangServiceImpl implements KhachHangService {
	@Autowired
	KhachHangRepository khachhangRepository;

	public List<KhachHang> getAllKhachHang() {
		// TODO Auto-generated method stub
		return (List<KhachHang>) khachhangRepository.findAll();
	}

	public KhachHang getKhachHangById(int id) {
		// TODO Auto-generated method stub
		return khachhangRepository.findById(id).get();
	}

	public void saveOrUpdate(KhachHang cthd) {
		// TODO Auto-generated method stub
		khachhangRepository.save(cthd);
	}

	public void deleteKhachHang(int id) {
		// TODO Auto-generated method stub
		khachhangRepository.deleteById(id);
	}
}
