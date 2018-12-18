package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieuPK;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;
import fp.coffeeshopmanagement.repository.ChiTietNguyenLieuRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class ChiTietNguyenLieuServiceImpl implements ChiTietNguyenLieuService{
	@Autowired
	ChiTietNguyenLieuRepository ctnlRepository;

//	public List<ChiTietNguyenLieu> getAllChiTietNguyenLieu() {
//		// TODO Auto-generated method stub
//		return (List<ChiTietNguyenLieu>)ctnlRepository.findAll();
//	}

	public List<ChiTietNguyenLieu> getChiTietNguyenLieuByIdThucUong(int idThucUong) {
		// TODO Auto-generated method stub
		return ctnlRepository.findAllByIdThucUong(idThucUong);
	}

	public void saveOrUpdate(ChiTietNguyenLieu ctnl) {
		// TODO Auto-generated method stub
		ctnlRepository.save(ctnl);
	}

//	public void deleteChiTietNguyenLieu(int id) {
//		// TODO Auto-generated method stub
//		ctnlRepository.deleteById(id);
//	}
	
	
}
