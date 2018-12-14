package fp.coffeeshopmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="congviec")
public class CongViec {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int iMaCV;
	
	@Column(name="tencv")
	private String sTenCV;

	public int getiMaCV() {
		return iMaCV;
	}

	public void setiMaCV(int iMaCV) {
		this.iMaCV = iMaCV;
	}

	public String getsTenCV() {
		return sTenCV;
	}

	public void setsTenCV(String iTenCV) {
		this.sTenCV = iTenCV;
	}

	public CongViec() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
