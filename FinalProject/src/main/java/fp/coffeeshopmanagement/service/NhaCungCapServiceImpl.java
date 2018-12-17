package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.NhaCungCap;
import fp.coffeeshopmanagement.repository.NhaCungCapRepository;


@Service
@Transactional(rollbackFor = Exception.class)
public class NhaCungCapServiceImpl implements NhaCungCapService {
	@Autowired
	NhaCungCapRepository nhacungcapRepository;

	public List<NhaCungCap> getAllNhaCungCap() {
		return (List<NhaCungCap>) nhacungcapRepository.findAll();
	}

	public NhaCungCap getNhaCungCapById(int id) {
		return nhacungcapRepository.findById(id).get();
	}

	public void saveOrUpdate(NhaCungCap nhacungcap) {
		nhacungcapRepository.save(nhacungcap);
	}

	public void deleteNhaCungCap(int id) {
		nhacungcapRepository.deleteById(id);
	}
}
