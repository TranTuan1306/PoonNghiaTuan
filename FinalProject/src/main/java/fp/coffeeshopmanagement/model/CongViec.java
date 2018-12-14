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
	private int iTenCV;

	public int getiMaCV() {
		return iMaCV;
	}

	public void setiMaCV(int iMaCV) {
		this.iMaCV = iMaCV;
	}

	public int getiTenCV() {
		return iTenCV;
	}

	public void setiTenCV(int iTenCV) {
		this.iTenCV = iTenCV;
	}

	public CongViec() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
