package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.HoaDon;
import fp.coffeeshopmanagement.repository.HoaDonRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class HoaDonServiceImpl implements HoaDonService{
	@Autowired
	HoaDonRepository hdRepository;

	public boolean isExisting(int idHD) {
		return hdRepository.existsById(idHD);
	}

	public List<HoaDon> getAllHoaDon() {
		// TODO Auto-generated method stub
		return (List<HoaDon>)hdRepository.findAll();
	}

	public HoaDon getHoaDonById(int id) {
		// TODO Auto-generated method stub
		return hdRepository.findById(id).get();
	}

	public void saveOrUpdate(HoaDon hd) {
		// TODO Auto-generated method stub
		hdRepository.save(hd);
	}

	public void deleteHoaDon(int id) {
		// TODO Auto-generated method stub
		hdRepository.deleteById(id);
	}
	
	
	
}
