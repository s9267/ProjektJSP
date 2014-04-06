package klasy;

import java.util.ArrayList;
import java.util.List;

import klasy.Osoba;

public class ListaOsob {
	
	private List<Osoba> osoby = new ArrayList<Osoba>();

	public void dodaj(Osoba osoba) {
		Osoba nowaOsoba = new Osoba(osoba.getImie(),osoba.getNazwisko(), osoba.getRok(), osoba.getZawod(), osoba.getMiasto());
		osoby.add(nowaOsoba);
	}

	public List<Osoba> getOsoby() {
		return osoby;
	}
}
