package fp.coffeeshopmanagement.model;

import javax.persistence.*;

@Entity
@Table(name="congviec")
public class CongViec {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="macv")
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

	public void setsTenCV(String sTenCV) {
		this.sTenCV = sTenCV;
	}

	public CongViec() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
