package fp.coffeeshopmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fp.coffeeshopmanagement.model.NhaCungCap;
import fp.coffeeshopmanagement.repository.NhaCungCapRepository;


@Service
@Transactional
public class NhaCungCapServiceImpl {
	@Autowired
	NhaCungCapRepository nhacungcapRepository;

	public List<NhaCungCap> getAllNhaCungCap() {
		// TODO Auto-generated method stub
		return (List<NhaCungCap>) nhacungcapRepository.findAll();
	}

	public NhaCungCap getNhaCungCapById(int id) {
		// TODO Auto-generated method stub
		return nhacungcapRepository.findById(id).get();
	}

	public void saveOrUpdate(NhaCungCap nhacungcap) {
		// TODO Auto-generated method stub
		nhacungcapRepository.save(nhacungcap);
	}

	public void deleteNhaCungCap(int id) {
		// TODO Auto-generated method stub
		nhacungcapRepository.deleteById(id);
	}
}
