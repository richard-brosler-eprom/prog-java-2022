package br.com.senai.rh;

import java.util.ArrayList;
import java.util.List;

public class CalculaInss {
	private List<FaixaInss> faixas;
	public CalculaInss() {
		faixas = new ArrayList<FaixaInss>();
	}
	public void addLista(FaixaInss it) {
		faixas.add(it);
	}
	public void delLista(FaixaInss it) {
		faixas.remove(it);
	}
	public void clearLista() {
		faixas.clear();
	}
	public float calcularInss(float valor) {
		float ret=0, vlrAp = 0, faixaAnt = 0;
		for( int i=0;i<faixas.size(); i++) {		
			if (valor >= faixas.get(i).getValorFim()) {
				float vlrCalc=( faixas.get(i).getValorFim() - 
						faixaAnt ) * 
						 faixas.get(i).getPercentual() / 100;
				ret+=vlrCalc;
				vlrAp+=faixas.get(i).getValorFim();
				faixaAnt=faixas.get(i).getValorFim();
			} else {
				ret+=(valor - vlrAp) * 
					faixas.get(i).getPercentual() / 100;
			}
		}
		return ret;
	}
}
