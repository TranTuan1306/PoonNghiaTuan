package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.LoaiHoaDon;
import fp.coffeeshopmanagement.repository.LoaiHoaDonRepository;

@Service
@Transactional
public class LoaiHoaDonServiceImpl implements LoaiHoaDonService {
	@Autowired
	LoaiHoaDonRepository loaihoadonRepository;

	public List<LoaiHoaDon> getAllLoaiHoaDon() {
		// TODO Auto-generated method stub
		return (List<LoaiHoaDon>) loaihoadonRepository.findAll();
	}

	public LoaiHoaDon getLoaiHoaDonById(int id) {
		// TODO Auto-generated method stub
		return loaihoadonRepository.findById(id).get();
	}

	public void saveOrUpdate(LoaiHoaDon loaihoadon) {
		// TODO Auto-generated method stub
		loaihoadonRepository.save(loaihoadon);
	}

	public void deleteLoaiHoaDon(int id) {
		// TODO Auto-generated method stub
		loaihoadonRepository.deleteById(id);
	}
}
