package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Bean.ConnectionProvider;
import Bean.ResultBean;
import Bean.UserBean;

public class ClassDAO {
	public static boolean login(UserBean u){
		try {
			Connection con = ConnectionProvider.getCon();
			String selectQuery = "SELECT username, password FROM JSP";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(selectQuery);

			while(rs.next()) {
				String dbUserName = rs.getString(1);
				String dbPassword =rs.getString(2);
				if(dbUserName.equals(u.getUsername()) && dbPassword.equals(u.getPassword()))
					return true;
			}
		} catch (SQLException e) {
			System.out.println("Error while Login " + e);
		}
		return false;
	}


	public static int register(UserBean u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement st = con.prepareStatement("INSERT INTO JSP VALUES (?,?) ");
			st.setString(1, u.getUsername());
			st.setString(2, u.getPassword());

			status = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

	public static int result(ResultBean user){
		int count=0;
		try {
			Connection con = ConnectionProvider.getCon();
			String selectQuery = "SELECT answer FROM QUIZ";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(selectQuery);

			while(rs.next()) {
				String dbResult = rs.getString(1);
				if(dbResult.equals(user.getQues1()) || dbResult.equals(user.getQues2()))
					count++;
			}
			return count;
		} catch (SQLException e) {
			System.out.println("Error while result " + e);
		}
		return 0;
	}
}
