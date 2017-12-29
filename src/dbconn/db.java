package dbconn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;

import action.demo;
public class db {
	
	public static Connection con=null;
	public static PreparedStatement ps=null;
	public static ResultSet rs=null;
	
	static
	{
	
		try{
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			con=DriverManager.getConnection("jdbc:db2://localhost:50000/pro","srinath","1234");
			} catch(Exception e)
				{
					e.printStackTrace();
				}
	}	
	public static String reg(demo obj) throws Exception
	{
		ps=con.prepareStatement("insert into signup values(?,?,?,?,?,?,?,?)");
		ps.setString(1, obj.getFname());
		ps.setString(2, obj.getLname());
		ps.setString(3, obj.getDob());
		ps.setString(4, obj.getMob());
		ps.setString(5, obj.getGen());
		ps.setString(6, obj.getEmail());
		ps.setString(7, obj.getPswd());
		ps.setString(8, obj.getCpswd());
	
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		return "something";
	}
	public static String log(demo obj)throws Exception
	{
		ps=con.prepareStatement("select * from signup where email='"+obj.getEmail()+"' and pswd='"+obj.getPswd()+"'");
		
		rs=ps.executeQuery();
		if(rs.next()){
			return "success";
		}
		return "fail";
	}
	public static String up(demo obj)throws Exception
	{
		ps=con.prepareStatement("update signup set (fname,lname,dob,mob,gen)=(?,?,?,?,?) where email=?");
		ps.setString(1,obj.getFname());
		ps.setString(2, obj.getLname());
		ps.setString(3,obj.getDob() );
		ps.setString(4,obj.getMob() );
		ps.setString(5,obj.getGen() );
		ps.setString(6, obj.getEmail());

		
		int j=ps.executeUpdate();
		if(j==1)
		{
			return "success";
		}
		
		return "fail";
	}
	public static String wallet(demo obj) throws Exception
	{
		ps=con.prepareStatement("insert into  wallet values(?,0)");
		ps.setString(1, obj.getEmail());
		ps.setString(2, obj.getWallet());
		
	
		int i=ps.executeUpdate();
		if(i==1)
		{
			return "success";
		}
		return "something";
	}
	public static void main(String a[])
	{
		}
	}



	




