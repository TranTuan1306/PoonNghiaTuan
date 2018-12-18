package fp.coffeeshopmanagement.repository;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieuPK;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import fp.coffeeshopmanagement.model.ChiTietNguyenLieu;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ChiTietNguyenLieuRepository extends CrudRepository<ChiTietNguyenLieu, ChiTietNguyenLieuPK>{
    @Query(value = "select * from chitietnguyenlieu ctnl where ctnl.mathucuong=:mathucuong", nativeQuery = true)
    List<ChiTietNguyenLieu> findAllByIdThucUong(@Param("mathucuong") Integer idThucUong);
}
