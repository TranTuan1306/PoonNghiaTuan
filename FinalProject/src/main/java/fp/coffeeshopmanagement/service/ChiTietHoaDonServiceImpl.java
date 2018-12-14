package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.ChiTietHoaDon;
import fp.coffeeshopmanagement.repository.ChiTietHoaDonRepository;

@Service
@Transactional
public class ChiTietHoaDonServiceImpl implements ChiTietHoaDonService{
	@Autowired
	ChiTietHoaDonRepository cthdRepository;

	public List<ChiTietHoaDon> getAllChiTietHoaDon() {
		// TODO Auto-generated method stub
		return (List<ChiTietHoaDon>) cthdRepository.findAll();
	}

	public ChiTietHoaDon getChiTietHoaDonById(int id) {
		// TODO Auto-generated method stub
		return cthdRepository.findById(id).get();
	}

	public void saveOrUpdate(ChiTietHoaDon cthd) {
		// TODO Auto-generated method stub
		cthdRepository.save(cthd);
	}

	public void deleteChiTietHoaDon(int id) {
		// TODO Auto-generated method stub
		cthdRepository.deleteById(id);
	}
	
}
