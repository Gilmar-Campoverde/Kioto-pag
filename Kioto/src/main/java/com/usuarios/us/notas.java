package com.usuarios.us;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.usuarios.datos.*;
import com.usuarios.us.usdatos;


public class notas {
		
		private int id_notas;
		private int notaf;
		private int id_usuario;
		
		public notas() {	
		}		
		public int getId_notas() {
			return id_notas;
		}
		public void setId_notas(int id_notas) {
			this.id_notas = id_notas;
		}
		public int getNotaf() {
			return notaf;
		}
		public void setNotaf(int notaf) {
			this.notaf = notaf;
		}
		public int getId_usuario() {
			return id_usuario;
		}
		public void setId_usuario(int id_usuario) {
			this.id_usuario = id_usuario;
		}
		public String ingresarN(int id, int notaf, String nombre)
		{
			String result="";
			Conexion con=new Conexion();
			PreparedStatement pr=null;
			String sql="INSERT INTO tb_notas(id_notas,notafinal,nombre_usuarios) VALUES(?,?,?)";
			try{
				pr=con.getConexion().prepareStatement(sql);
				pr.setInt(1,id);
				pr.setInt(2,notaf);
				pr.setString(3,nombre);
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
			String sql="SELECT id_usuario,notafinal,tb_usuarios.nombre_usuarios FROM tb_notas,tb_usuarios WHERE tb_notas.id_notas=tb_usuarios.id_usuario AND tb_notas.nombre_usuarios=tb_usuarios.nombre_usuarios ORDER BY notafinal DESC LIMIT 10;"
					+ " ";
			Conexion con=new Conexion();
			String tabla="<table border=3><th bgcolor=\\\"#5863F8\\\" , style=\\\"border: solid 4px black; font-size: 50px;\\\">Calificacion</th>"
					+ "<th bgcolor=\\\\\\\"#5863F8\\\\\\\" , style=\\\\\\\"border: solid 4px black; font-size: 50px;\\\\\\\">Nombre</th>"
					+ "<th bgcolor=\\\"#5863F8\\\" , style=\\\"border: solid 4px black; font-size: 100px;\\\">Foto</th>";
			ResultSet rs=null;
			usdatos usu =new usdatos();
			rs=con.Consulta(sql);
			try {
				while(rs.next())
				{
					tabla+="<tr><td bgcolor=\\\\\\\"#FFFFFFF\\\\\\\" style=\\\"border: solid 4px black;\\\"><p style=\\\"color:black\\\">"+rs.getInt(2) +"</td>"
							+ "<td bgcolor=\\\\\\\"#FFFFFFF\\\\\\\" style=\\\"border: solid 4px black;\\\"><p style=\\\"color:black\\\">"+rs.getString(3) +"</td>"
							+ "<td><img width=\"100\" height=\"100\" src=\" "+usu.mostrarFoto(rs.getInt(1))+ " \"></td>"
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
			String sql="SELECT MAX(id_notas) FROM tb_notas";
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
		
	}

