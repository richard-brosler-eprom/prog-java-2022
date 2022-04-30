package br.com.senai.rh;

import java.util.ArrayList;
import java.util.List;

public class CalcularIrrf {
	private List<FaixaIrrf> faixas;
	private float deducaoPorDependente;
	private int numeroDependentes;
	private float deducaoInss;
	public CalcularIrrf() {
		faixas = new ArrayList<FaixaIrrf>();
	}
	public void addLista(FaixaIrrf it) {
		faixas.add(it);
	}
	public void delLista(FaixaIrrf it) {
		faixas.remove(it);
	}
	public void clearLista() {
		faixas.clear();
	}
	public float calcularIrrf(float valor) {
		float ret=0;
		float vlrBC = valor - deducaoInss - 
					  deducaoPorDependente * numeroDependentes;
		for( int i=0;i<faixas.size(); i++) {		
			if (vlrBC >= faixas.get(i).getValorInicio() && 
				vlrBC <= faixas.get(i).getValorFim()) {
				float vlrCalc= vlrBC * 
					  faixas.get(i).getPercentual() / 100 - 
					  faixas.get(i).getDeducao();
				ret=vlrCalc;
				break;
			}
		}
		return ret;
	}
	public float getDeducaoPorDependente() {
		return deducaoPorDependente;
	}
	public void setDeducaoPorDependente(float deducaoPorDependente) {
		this.deducaoPorDependente = deducaoPorDependente;
	}
	public int getNumeroDependentes() {
		return numeroDependentes;
	}
	public void setNumeroDependentes(int numeroDependentes) {
		this.numeroDependentes = numeroDependentes;
	}
	public float getDeducaoInss() {
		return deducaoInss;
	}
	public void setDeducaoInss(float deducaoInss) {
		this.deducaoInss = deducaoInss;
	}
	
}
