package fp.coffeeshopmanagement.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import fp.coffeeshopmanagement.model.DanhMucThucUong;
import fp.coffeeshopmanagement.repository.DanhMucThucUongRepository;

@Service
@Transactional
public class DanhMucThucUongServiceImpl implements DanhMucThucUongService {
	@Autowired
	DanhMucThucUongRepository dmtuRepository;

	public List<DanhMucThucUong> getAllDanhMucThucUong() {
		// TODO Auto-generated method stub
		return (List<DanhMucThucUong>) dmtuRepository.findAll();
	}

	public DanhMucThucUong getDanhMucThucUongById(long id) {
		// TODO Auto-generated method stub
		return dmtuRepository.findById(id).get();
	}

	public void saveOrUpdate(DanhMucThucUong dmtu) {
		// TODO Auto-generated method stub
		dmtuRepository.save(dmtu);
	}

	public void deleteDanhMucThucUong(long id) {
		// TODO Auto-generated method stub
		dmtuRepository.deleteById(id);
	}

	
}
