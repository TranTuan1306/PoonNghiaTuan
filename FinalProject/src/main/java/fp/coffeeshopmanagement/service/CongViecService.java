package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.CongViec;

public interface CongViecService {
	public List<CongViec> getAllCongViec();
	
	public CongViec getCongViecById(int id);
	
	public void saveOrUpdate(CongViec cv);
	
	public void deleteCongViec(int id);
}
