package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;


public class MemberDB {

	public boolean check(String id, String pw) throws Exception  {

		Class.forName("com.mysql.jdbc.Driver");

	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	 
	    String sql = "select * from member where id = ? and pw= ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	   	ps.setString(1, id);
	   	ps.setString(2, pw);
		 		
		ResultSet rs = ps.executeQuery();
		boolean result = false;

		if(rs.next()) {
			result = true;
		}
		return result;
	}
	
	public String check2(String name, String company, String tel) throws Exception  {
	
		Class.forName("com.mysql.jdbc.Driver");
		
	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	    
	    String sql = "select id from member where name = ? and company = ? and tel = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	 	ps.setString(1, name);
	   	ps.setString(2, company);
	   	ps.setString(3, tel);

		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return (rs.getString("id"));
		} else {
			return null;
		}
	}
	
	
	public boolean check3(String id, String name, String company, String tel) throws Exception  {

		Class.forName("com.mysql.jdbc.Driver");
		 
	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");

	    String sql = "select * from member where id = ? and name = ? and company = ? and tel = ?";
	    PreparedStatement ps = con.prepareStatement(sql);

	    ps.setString(1, id);
	    ps.setString(2, name);
	   	ps.setString(3, company);
	   	ps.setString(4, tel);

		ResultSet rs = ps.executeQuery();
		boolean result = false;

		if(rs.next()) {
			result = true;
		} 
		return result;
	}
	
	public void create(MemberVO bag) throws Exception   {
		
		Class.forName("com.mysql.jdbc.Driver");
	    	 	
	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	 
	    String sql = "insert into member values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	    PreparedStatement ps = con.prepareStatement(sql);
	   	ps.setString(1, bag.getId());
	   	ps.setString(2, bag.getPw());
	   	ps.setString(3, bag.getName());
	   	ps.setString(4, bag.getCompany());
	   	ps.setString(5, bag.getTel());
	   	ps.setString(6, bag.getBirth());
	   	ps.setString(7, bag.getEmail());
	   	ps.setString(8, bag.getCard());
	   	ps.setString(9, bag.getCardnum());

		ps.executeUpdate();
	}
	
	public MemberVO read(String id) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		 	
	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");

	    String sql = "select * from member where id = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	   	ps.setString(1, id);
			
		ResultSet rs = ps.executeQuery();

		MemberVO bag = new MemberVO();
		if (rs.next()) {

			String id2 = rs.getString("id");
			String pw = rs.getString(2);
			String name = rs.getString(3);
			String company = rs.getString(4);
			String tel = rs.getString(5);
			String birth = rs.getString(6);
			String email = rs.getString(7);
			String card = rs.getString(8);
			String cardnum = rs.getString(9);
			bag.setId(id2);
			bag.setPw(pw);
			bag.setName(name);
			bag.setCompany(company);
			bag.setTel(tel);
			bag.setBirth(birth);
			bag.setEmail(email);
			bag.setCard(card);
			bag.setCardnum(cardnum);		
		}
		return bag;
	}
	
	public void update(MemberVO bag) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		 
	    String url = "jdbc:mysql://localhost:3306/movie";
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	    
	    String sql = "update member set pw = ?, company = ?, tel = ?, email = ?, card = ?, cardnum = ? where id = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	  
	   	ps.setString(1, bag.getPw());
	
	   	ps.setString(2, bag.getCompany());
		ps.setString(3, bag.getTel());
	   	ps.setString(4, bag.getEmail());
	   	ps.setString(5, bag.getCard());
	   	ps.setString(6, bag.getCardnum());
	   
	   	ps.setString(7, bag.getId());
	 
		ps.executeUpdate();	    
	}
	
	public void pwUpdate(String pw, String id) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver"); 
		 
	    String url = "jdbc:mysql://localhost:3306/movie";
	    
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	    
	    String sql = "update member set pw = ? where id = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	  
	   	ps.setString(1, pw);
	   	ps.setString(2, id);
	 
		ps.executeUpdate();
	}
	
	public void delete(String id) throws Exception {
		
	    Class.forName("com.mysql.jdbc.Driver");
	    
	    String url = "jdbc:mysql://localhost:3306/movie";
	    
	    Connection con = DriverManager.getConnection(url, "root", "1234");
	 
	    String sql = "delete from member where id = ?";
	    PreparedStatement ps = con.prepareStatement(sql);
	   	ps.setString(1, id);
	
		ps.executeUpdate();
	}
}
