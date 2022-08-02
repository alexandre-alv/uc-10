package application;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import db.DbConexao;

public class Main {

	public static void main(String[] args) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
	
	try {
		
		con = DbConexao.getConnection();
		st = con.createStatement();
		rs = st.executeQuery("Select * from funcionario, veiculo");
		
		while(rs.next()) {
			System.out.println(rs.getInt("Id")
					+ ", Placa: "
					+ rs.getString("Placa")
					+", Marca: " 
					+rs.getString("Marca")
					+", Matricula: "
					+rs.getInt("Matricula")
					+ ", Nome: "
					+rs.getString("Nome"));
			
			
			
		}
		
		
	}
	 
	catch(SQLException e ) {
		
		e.printStackTrace();
		
	}
	
	}
}
