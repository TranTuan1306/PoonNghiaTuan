package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.CongViec;
import fp.coffeeshopmanagement.repository.CongViecRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class CongViecImpl implements CongViecService{
	@Autowired
	CongViecRepository cvRepository;

	public List<CongViec> getAllCongViec() {
		// TODO Auto-generated method stub
		return (List<CongViec>)cvRepository.findAll();
	}

	public CongViec getCongViecById(int id) {
		// TODO Auto-generated method stub
		return cvRepository.findById(id).get();
	}

	public void saveOrUpdate(CongViec cv) {
		// TODO Auto-generated method stub
		cvRepository.save(cv);
	}

	public void deleteCongViec(int id) {
		// TODO Auto-generated method stub
		cvRepository.deleteById(id);
	}
	
	
}
