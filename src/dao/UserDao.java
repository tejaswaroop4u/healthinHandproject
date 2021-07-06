package dao;


import java.sql.*;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;



public class UserDao extends HttpServlet {
	public boolean checkCredentials(String username,String password) throws ClassNotFoundException, SQLException {
		String sql="select * from users where username=? and password=?";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-TSNRJGE:1521:xe","yasho","password");  
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, username);
		stmt.setString(2, password);
		ResultSet rs=stmt.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
	}
}
