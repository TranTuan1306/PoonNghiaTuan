package fp.coffeeshopmanagement.service;

import java.util.List;
import fp.coffeeshopmanagement.model.*;

public interface DanhMucThucUongService {
	public List<DanhMucThucUong> getAllDanhMucThucUong();
	 
	 public DanhMucThucUong getDanhMucThucUongById(long id);
	 
	 public void saveOrUpdate(DanhMucThucUong dmtu);
	 
	 public void deleteDanhMucThucUong(long id);
}
