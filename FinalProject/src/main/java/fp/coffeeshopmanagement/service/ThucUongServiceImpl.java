package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.ThucUong;
import fp.coffeeshopmanagement.repository.ThucUongRepository;

@Service
@Transactional
public class ThucUongServiceImpl {
	@Autowired
	ThucUongRepository thucuongRepository;

	public List<ThucUong> getAllThucUong() {
		// TODO Auto-generated method stub
		return (List<ThucUong>) thucuongRepository.findAll();
	}

	public ThucUong getThucUongById(int id) {
		// TODO Auto-generated method stub
		return thucuongRepository.findById(id).get();
	}

	public void saveOrUpdate(ThucUong thucuong) {
		// TODO Auto-generated method stub
		thucuongRepository.save(thucuong);
	}

	public void deleteThucUong(int id) {
		// TODO Auto-generated method stub
		thucuongRepository.deleteById(id);
	}
}
