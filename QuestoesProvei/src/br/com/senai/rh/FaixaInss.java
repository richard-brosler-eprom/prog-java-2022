package br.com.senai.rh;

public class FaixaInss {
	private int faixa;
	private float valorInicio;
	private float valorFim;
	private float percentual;
	public FaixaInss(int fx, float vlrIni, float vlrFim, float perc) {
		faixa = fx;
		valorInicio = vlrIni;
		valorFim = vlrFim;
		percentual = perc;
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
}
