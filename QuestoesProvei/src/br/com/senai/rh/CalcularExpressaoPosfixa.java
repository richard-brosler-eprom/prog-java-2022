package br.com.senai.rh;

import java.util.Stack;

public class CalcularExpressaoPosfixa {
	private Stack<Float> pilha;
	
	public CalcularExpressaoPosfixa() {
		pilha = new Stack<Float>(); 
	}

	public float calcularExpressaoPosfixa(String[] expressao) {
		float ret=0, opA=0, opB=0;
		for(int i=0;i<expressao.length; i++) {
			switch (expressao[i]) {
			case "+":
				opB = pilha.pop(); opA = pilha.pop();
				pilha.push(Float.valueOf(opA + opB));
				break;
			case "-":
				opB = pilha.pop(); opA = pilha.pop();
				pilha.push(Float.valueOf(opA - opB));
				break;
			case "*":
				opB = pilha.pop(); opA = pilha.pop();
				pilha.push(Float.valueOf(opA * opB));
				break;
			case "/":
				opB = pilha.pop(); opA = pilha.pop();
				pilha.push(Float.valueOf(opA / opB));
				break;
			default:
				opA = Float.valueOf(expressao[i]);
				pilha.push(opA);
				break;
			}
		}
		ret = pilha.pop();
		return ret;
	}
	

	
}
