package br.com.senai.rh;

public class FaixaIrrf {
	private int faixa;
	private float valorInicio;
	private float valorFim;
	private float percentual;
	private float deducao;
	public FaixaIrrf(int fx, float vlrini, 
					 float vlrfim, float perc, float ded) {
		faixa = fx;
		valorInicio = vlrini;
		valorFim = vlrfim;
		percentual = perc;
		deducao = ded;
	}
	public int getFaixa() {
		return faixa;
	}
	public void setFaixa(int faixa) {
		this.faixa = faixa;
	}
	public float getValorInicio() {
		return valorInicio;
	}
	public void setValorInicio(float valorInicio) {
		this.valorInicio = valorInicio;
	}
	public float getValorFim() {
		return valorFim;
	}
	public void setValorFim(float valorFim) {
		this.valorFim = valorFim;
	}
	public float getPercentual() {
		return percentual;
	}
	public void setPercentual(float percentual) {
		this.percentual = percentual;
	}
	public float getDeducao() {
		return deducao;
	}
	public void setDeducao(float deducao) {
		this.deducao = deducao;
	}
}
