package br.com.senaibauru.classes;

public class Calculadora {
	private double operando1;
	private double operando2;
	private String operador;
	
	public Calculadora() {
		// TODO Auto-generated constructor stub
		this.operando1 = 0;
		this.operando2 = 0;
		this.operador = "+";
	}

	public double getOperando1() {
		return operando1;
	}

	public void setOperando1(double operando1) {
		this.operando1 = operando1;
	}

	public double getOperando2() {
		return operando2;
	}

	public void setOperando2(double operando2) {
		this.operando2 = operando2;
	}

	public String getOperador() {
		return operador;
	}

	public void setOperador(String operador) {
		if (!operador.equals("+") && !operador.equals("-") && 
				!operador.equals("*") && !operador.equals("/"))
			throw new IllegalArgumentException("Operador Inválido! Validos +, -, * ou /");
		this.operador = operador;
	}
	
	public double getResultado() {
		double ret = 0;
		switch(this.operador) {
		case "+":
			ret = this.operando1 + this.operando2;
			break;
		case "-":
			ret = this.operando1 - this.operando2;
			break;
		case "*":
			ret = this.operando1 * this.operando2;
			break;
		case "/":
			ret = this.operando1 / this.operando2;
			break;
		}		
		return ret;
	}
	
}
