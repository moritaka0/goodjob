package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//JDBCを利用してデータベースと接続するクラス
public class DAO {
	final static String DRIVER = "com.mysql.cj.jdbc.Driver";
	final static String URL = "jdbc:mysql://localhost:3306/";
	final static String USER = "root";
	final static String PASS = "Moritaka1031!";

	//サブクラスがデータベースへの接続を取得するためのメソッド
	public static Connection getConnection() throws SQLException{
		try {
			Class.forName(DRIVER);
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			throw new IllegalStateException(
				"fail to class load: " + e.getMessage());
			}
		Connection con = DriverManager.getConnection(URL, USER, PASS);
		return con;
		}
	//testコード
	/*
	public static void main(String[] args) throws SQLException{
		Connection con = getConnection();
		Statement smt = con.createStatement();
		ResultSet rs = smt.executeQuery("select * from webdb.member");
		while(rs.next()) {
			String s = "NAME" + rs.getString("name");
			System.out.println(s);
		}
		smt.close();
		con.close();
	}*/
}
