package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.NhaCungCap;

public interface NhaCungCapService {
	
	public List<NhaCungCap> getAllNhaCungCap();

	public NhaCungCap getNhaCungCapById(int id);

	public void saveOrUpdate(NhaCungCap cthd);

	public void deleteNhaCungCap(int id);
}
