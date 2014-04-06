package klasy;

public class Osoba {
	private String imie = "";
	private String nazwisko = "";
	private int rok;
	private String miasto;
	private String zawod;

	public Osoba() {
		super();
	}
	
	public Osoba(String imie, String nazwisko, int rok, String zawod, String miasto) {
		super();
		this.imie = imie;
		this.nazwisko = nazwisko;
		this.rok = rok;
		this.zawod = zawod;
		this.miasto = miasto;
	}

	public String getImie() {
		return imie;
	}

	public void setImie(String imie) {
		this.imie = imie;
	}

	public String getNazwisko() {
		return nazwisko;
	}

	public void setNazwisko(String nazwisko) {
		this.nazwisko = nazwisko;
	}

	public String getMiasto() {
		return miasto;
	}

	public void setMiasto(String miasto) {
		this.miasto = miasto;
	}

	public String getZawod() {
		return zawod;
	}

	public void setZawod(String zawod) {
		this.zawod = zawod;
	}

	public int getRok() {
		return rok;
	}

	public void setRok(int rok) {
		this.rok = rok;
	}
	public boolean walidacja()
	{
		if(this.imie != "" && this.nazwisko !="" && this.rok > 0)
		{
			return true;
		}
		return false;
	}
}
