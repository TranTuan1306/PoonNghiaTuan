package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieu;
import fp.coffeeshopmanagement.repository.ChiTietHopDongCungCapNguyenLieuRepository;

@Service
@Transactional
public class ChiTietHopDongCungCapNguyenLieuServiceImpl implements ChiTietHopDongCungCapNguyenLieuService {
	@Autowired
	ChiTietHopDongCungCapNguyenLieuRepository cthdccnlRepository;

	public List<ChiTietHopDongCungCapNguyenLieu> getAllChiTietHopDongCungCapNguyenLieu() {
		// TODO Auto-generated method stub
		return (List<ChiTietHopDongCungCapNguyenLieu>)cthdccnlRepository.findAll();
	}

	public ChiTietHopDongCungCapNguyenLieu getChiTietHopDongCungCapNguyenLieuById(int id) {
		// TODO Auto-generated method stub
		return cthdccnlRepository.findById(id).get();
	}

	public void saveOrUpdate(ChiTietHopDongCungCapNguyenLieu cthdccnl) {
		// TODO Auto-generated method stub
		cthdccnlRepository.save(cthdccnl);
	}

	public void deleteChiTietHopDongCungCapNguyenLieu(int id) {
		// TODO Auto-generated method stub
		cthdccnlRepository.deleteById(id);
	}
	
	
}
