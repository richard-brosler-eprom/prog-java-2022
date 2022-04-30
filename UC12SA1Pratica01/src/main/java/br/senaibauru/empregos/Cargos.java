package br.senaibauru.empregos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Cargos {
	private int id;
	private String descricao;
	private String cbo;

	public void funcao1() {
		String sql = "update cargo set descricao=?, cbo=? where id=?";
		try {
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			PreparedStatement cm = 
			          (PreparedStatement) conn.prepareStatement(sql);
			cm.setString(1, descricao);
			cm.setString(2, cbo);
			cm.setInt(3, id);
			cm.execute();
			cm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void funcao2() {
		String sql = "insert into cargo(descricao, cbo) values (?, ?)";
		try {
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			PreparedStatement cm = 
						(PreparedStatement) conn.prepareStatement(sql);
			cm.setString(1, descricao);
			cm.setString(2, cbo);
			cm.execute();
			cm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String funcao3() {
		String sql = "select * from cargo order by id";
		String ret = "";
		try {
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				ret += "<tr>";
				ret += "<td>" + rs.getInt("id") + "</td>";
				ret += "<td>" + rs.getString("descricao") + "</td>";
				ret += "<td>" + rs.getString("cbo") + "</td>";
				ret += "</tr>";
			}
			rs.close();
			st.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}

	public void funcao4() {
		String sql = "delete from cargo where id=?";
		try {
			ConectaBD cbd = new ConectaBD();
			Connection conn = cbd.Conectar();
			PreparedStatement cm = 
				(PreparedStatement) conn.prepareStatement(sql);
			cm.setInt(1, id);
			cm.execute();
			cm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getCbo() {
		return cbo;
	}

	public void setCbo(String cbo) {
		this.cbo = cbo;
	}

}
