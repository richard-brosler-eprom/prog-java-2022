package br.com.senai.rh;

public class CalcularValores {

	public static void main(String[] args) {
		float vlrSalario = 10165.00f;
		int numeroDependentesIr = 1;
		//criando a calculadora do INSS
		CalculaInss cc = new CalculaInss();
		//criando a calculadora do IRRF
		CalcularIrrf ccIr = new CalcularIrrf();
		//Adicionando as faixas do INSS
		cc.addLista(new FaixaInss(1, 0f, 1212.00f, 7.5f));
		cc.addLista(new FaixaInss(2, 1212.01f, 2427.35f, 9.00f));
		cc.addLista(new FaixaInss(3, 2427.36f, 3641.03f, 12.00f));
		cc.addLista(new FaixaInss(4, 3641.04f, 7087.22f, 14.00f));
		//Adicionando as faixas do IRRF
		ccIr.addLista(new FaixaIrrf(1, 0, 1903.98f, 0f, 0f));
		ccIr.addLista(new FaixaIrrf(2, 1903.99f, 2826.65f, 7.5f, 142.8f));
		ccIr.addLista(new FaixaIrrf(3, 2826.66f, 3751.05f, 15f, 354.8f));
		ccIr.addLista(new FaixaIrrf(4, 3751.06f, 4664.68f, 22.5f, 636.13f));
		ccIr.addLista(new FaixaIrrf(5, 4664.69f, 99999999999f, 27.5f, 869.36f));
		//Adicionando o valor de dedução por dependente de IR
		ccIr.setDeducaoPorDependente(189.59f);
		//Calculando o valor do INSS
		float vlrInss=cc.calcularInss(vlrSalario);
		//Setando o número de dependentes do funcionário
		ccIr.setNumeroDependentes(numeroDependentesIr);
		//Setando valor do INSS para a dedução da BC do IR
		ccIr.setDeducaoInss(vlrInss);
		//Calculando o IRRF
		float vlrIrrf=ccIr.calcularIrrf(vlrSalario);
		//Mostrando os valores
		System.out.println(vlrInss);
		System.out.println(vlrIrrf);
	}

}
