package br.com.senai.rh;
public class CalcularExpressao {
	public static void main(String[] args) {
		CalcularExpressaoPosfixa cal = new CalcularExpressaoPosfixa();
		String expressaoPosfixa = "5 3 * 5 / 10 2 / + 2 +";
		String[] expressao = expressaoPosfixa.split(" ");
		System.out.println(cal.calcularExpressaoPosfixa(expressao));
	}
}
