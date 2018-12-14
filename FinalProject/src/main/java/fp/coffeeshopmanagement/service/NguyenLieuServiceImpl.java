package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.NguyenLieu;
import fp.coffeeshopmanagement.repository.NguyenLieuRepository;

@Service
@Transactional
public class NguyenLieuServiceImpl implements NguyenLieuService {
	@Autowired
	NguyenLieuRepository nguyenlieuRepository;

	public List<NguyenLieu> getAllNguyenLieu() {
		// TODO Auto-generated method stub
		return (List<NguyenLieu>) nguyenlieuRepository.findAll();
	}

	public NguyenLieu getNguyenLieuById(int id) {
		// TODO Auto-generated method stub
		return nguyenlieuRepository.findById(id).get();
	}

	public void saveOrUpdate(NguyenLieu nguyenlieu) {
		// TODO Auto-generated method stub
		nguyenlieuRepository.save(nguyenlieu);
	}

	public void deleteNguyenLieu(int id) {
		// TODO Auto-generated method stub
		nguyenlieuRepository.deleteById(id);
	}
}
