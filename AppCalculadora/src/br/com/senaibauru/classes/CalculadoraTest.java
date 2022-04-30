package br.com.senaibauru.classes;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class CalculadoraTest {
	private Calculadora cv;
	
	@BeforeEach
	void setUp() throws Exception {
		this.cv = new Calculadora();
	}

	@AfterEach
	void tearDown() throws Exception {
		this.cv = null;
	}

	@DisplayName("Testando operadores válidos")
	@Test
	void testOperadorValido() {
		assertDoesNotThrow(()->{
			this.cv.setOperador("+");
			this.cv.setOperador("-");
			this.cv.setOperador("*");
			this.cv.setOperador("/");
		});
	}

	@DisplayName("Testando operadores invalidos")
	@Test
	void testOperadorInValido() {
		assertThrows(IllegalArgumentException.class, ()->{
			this.cv.setOperador("^");
		});
	}
	
	@DisplayName("Testando operadores Soma Válida")
	@Test
	void testSomaValida() {
		this.cv.setOperando1(2);
		this.cv.setOperando2(3);
		this.cv.setOperador("+");
		assertEquals(5.00, this.cv.getResultado());
	}

	@DisplayName("Testando operadores Subtração Válida")
	@Test
	void testSubValida() {
		this.cv.setOperando1(5);
		this.cv.setOperando2(3);
		this.cv.setOperador("-");
		assertEquals(2.00, this.cv.getResultado());
	}

	@DisplayName("Testando operadores Multiplicação Válida")
	@Test
	void testMultiplicacaoValida() {
		this.cv.setOperando1(2);
		this.cv.setOperando2(3);
		this.cv.setOperador("*");
		assertEquals(6.00, this.cv.getResultado());
	}

	@DisplayName("Testando operadores Divisão Válida")
	@Test
	void testDivisaoValida() {
		this.cv.setOperando1(6);
		this.cv.setOperando2(3);
		this.cv.setOperador("/");
		assertEquals(2.00, this.cv.getResultado());
	}

}
