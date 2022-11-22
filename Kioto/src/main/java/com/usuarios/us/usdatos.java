package com.usuarios.us;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.usuarios.datos.Conexion;
public class usdatos {
	private int idU;
	private String nombre;
	private int nota;
	
	public usdatos() {

	}

	public String consultarUsuarios()
	{
		String sql="SELECT * FROM tb_usuarios ORDER BY notaF DESC";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>Nombre</th><th>Nota Final</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getString(1)+"</td>"
						+ "<td>"+rs.getInt(2)+"</td>"
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
	public String ingresarUsuario(String nombre, int nota)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_usuarios (nombre,notaF) "
				+ "VALUES(?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setString(1, nombre);
			pr.setInt(2,nota);
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
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_usuarios ORDER BY notaF DESC";
		Conexion con=new Conexion();
		String tabla="<table border=1><th style="+"background-color:blue"+"><h2>Nombres</h2></th><th><h2>Nota Final</h2>"
				+ "<th><h2>Id</h2></th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td style="+"background-color:blue"+">"+rs.getString(2)+"</td>"
						+ "<td style="+"background-color:black"+">"+rs.getInt(3)+"</td>"
						+ "<td style="+"background-color:black"+">"+rs.getInt(1)+"</td>"
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
	public int consultarID()
	{
		String sql="SELECT MAX(idU) FROM tb_usuarios";
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

	public int getIdU() {
		return idU;
	}

	public void setIdU(int idU) {
		this.idU = idU;
	}

	public int getNota() {
		return nota;
	}

	public void setNota(int nota) {
		this.nota = nota;
	}
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}

