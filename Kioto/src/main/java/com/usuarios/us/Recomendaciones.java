package com.usuarios.us;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.usuarios.datos.*;

public class Recomendaciones {

	public String ingresarValoracion(int id, int nota,String opinion, String nombre)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_val (id_val, val,"
				+ "opinion,nombre_usuarios) "
				+ "VALUES(?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,id);
			pr.setInt(2,nota);
			pr.setString(3,opinion);
			pr.setString(4,nombre);
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
		
	public int consultarmaxID()
	{
		String sql="SELECT MAX(id_val) FROM tb_val";
		Conexion con=new Conexion();
		int max=0;
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				max=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return max;
	}
	
	
	public int consultarValoracion()
	{
		String sql="SELECT AVG(val)FROM tb_val";
		Conexion con=new Conexion();
		int max=0;
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				max=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return max;
	}
	
	public String consultarValoraciones()
	{
		String sql="SELECT * FROM tb_val ORDER BY id_val";
		Conexion con=new Conexion();
		String tabla="<table border=2><th bgcolor=\"#CB4646\" , style=\"border: solid 4px black; font-size: 30px;\">Id</th><th bgcolor=\"#CB4646\" , style=\"border: solid 4px black; font-size: 30px;\">Nombre</th>"
				+ "<th bgcolor=\"#CB4646\" , style=\"border: solid 4px black; font-size: 30px;\">Puntuacion</th><th bgcolor=\"#CB4646\" , style=\"border: solid 4px black; font-size: 30px;\">Sugerencia</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td bgcolor=\\\"hsla(31, 100%, 82%, 0.70)\\\" style=\"border: solid 4px black;\"><p style=\"color:black\">"+rs.getInt(1)+"</p></td>"
						+ "<td bgcolor=\\\"hsla(31, 100%, 82%, 0.70)\\\" style=\"border: solid 4px black;\"><p style=\"color:black\">"+rs.getString(4)+"</p></td>"
						+"<td bgcolor=\\\"hsla(31, 100%, 82%, 0.70)\\\" style=\"border: solid 4px black;\"><p style=\"color:black\">"+rs.getInt(2)+"</p></td>"
						+ "<td bgcolor=\\\"hsla(31, 100%, 82%, 0.70)\\\" style=\"border: solid 4px black;\"><p style=\"color:black\">"+rs.getString(3)+"</p></td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
}
