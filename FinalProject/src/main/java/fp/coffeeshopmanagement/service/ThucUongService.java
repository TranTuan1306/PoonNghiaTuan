package fp.coffeeshopmanagement.service;

import java.util.List;

import fp.coffeeshopmanagement.model.ThucUong;

public interface ThucUongService {
	public List<ThucUong> getAllThucUong();

	public ThucUong getThucUongById(int id);

	public void saveOrUpdate(ThucUong thucuong);

	public void deleteThucUong(int id);
}
