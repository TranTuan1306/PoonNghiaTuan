package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.ChiTietHoaDon;
import fp.coffeeshopmanagement.repository.ChiTietHoaDonRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class ChiTietHoaDonServiceImpl implements ChiTietHoaDonService{
	@Autowired
	ChiTietHoaDonRepository cthdRepository;

//	public List<ChiTietHoaDon> getAllChiTietHoaDon() {
//		// TODO Auto-generated method stub
//		return (List<ChiTietHoaDon>) cthdRepository.findAll();
//	}

	public List<ChiTietHoaDon> getChiTietHoaDonById(int idHD) {
		// TODO Auto-generated method stub

		return cthdRepository.findAllByIdHD(idHD);
	}

	public void saveOrUpdate(ChiTietHoaDon cthd) {
		// TODO Auto-generated method stub
		cthdRepository.save(cthd);
	}

	
}
