package fp.coffeeshopmanagement.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import fp.coffeeshopmanagement.model.ChiTietHoaDon;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ChiTietHoaDonRepository extends CrudRepository<ChiTietHoaDon, Integer>{
    @Query(value = "select * from chitiethoadon cthd where cthd.mahd=:mahd", nativeQuery = true)
    List<ChiTietHoaDon> findAllByIdHD(@Param("mahd") Integer idHD);
}
