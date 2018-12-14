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
		return (List<ChiTietHoaDon>)cthdRepository.findById(idHD).get();
	}

	public void saveOrUpdate(ChiTietHoaDon cthd) {
		// TODO Auto-generated method stub
		cthdRepository.save(cthd);
	}

//	public void deleteChiTietHoaDon(int id) {
//		// TODO Auto-generated method stub
//		cthdRepository.deleteById(id);
//	}
//
//	public void deleteChiTietHoaDon(int idHD, int idThucUong) {
//	   int isSuccessful = entityManager.createQuery("delete from chitiethoadon cthd where cthd.mahd=:mahd and cthd.mathucuong=:mathucuong")
//	            .setParameter("mahd", idHD)
//	            .setParameter("mathucuong", idThucUong)
//	            .executeUpdate();
//	    if (isSuccessful == 0) {
//	        throw new OptimisticLockException("CTHD modified concurrently");
//	    }
//	}
	
}
