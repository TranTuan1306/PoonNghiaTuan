package fp.coffeeshopmanagement.repository;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieuPK;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import fp.coffeeshopmanagement.model.ChiTietHopDongCungCapNguyenLieu;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ChiTietHopDongCungCapNguyenLieuRepository extends CrudRepository<ChiTietHopDongCungCapNguyenLieu, ChiTietHopDongCungCapNguyenLieuPK> {
    @Query(value = "select * from chitiethopdongcungcapnguyenlieu cthdccnl where cthdccnl.mahopdong=:mahopdong", nativeQuery = true)
    List<ChiTietHopDongCungCapNguyenLieu> findAllByIdHopDong(@Param("mahopdong") Integer idHopDong);
}
