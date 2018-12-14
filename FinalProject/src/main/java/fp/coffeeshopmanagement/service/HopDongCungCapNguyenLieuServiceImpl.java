package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.HopDongCungCapNguyenLieu;
import fp.coffeeshopmanagement.repository.HopDongCungCapNguyenLieuRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class HopDongCungCapNguyenLieuServiceImpl implements HopDongCungCapNguyenLieuService{
	@Autowired
	HopDongCungCapNguyenLieuRepository hdccnlRepository;

	public List<HopDongCungCapNguyenLieu> getAllHopDongCungCapNguyenLieu() {
		// TODO Auto-generated method stub
		return (List<HopDongCungCapNguyenLieu>)hdccnlRepository.findAll();
	}

	public HopDongCungCapNguyenLieu getHopDongCungCapNguyenLieuById(int id) {
		// TODO Auto-generated method stub
		return hdccnlRepository.findById(id).get();
	}

	public void saveOrUpdate(HopDongCungCapNguyenLieu hdccnl) {
		// TODO Auto-generated method stub
		hdccnlRepository.save(hdccnl);
	}

	public void deleteHopDongCungCapNguyenLieu(int id) {
		// TODO Auto-generated method stub
		hdccnlRepository.deleteById(id);
	}
	
	
}
