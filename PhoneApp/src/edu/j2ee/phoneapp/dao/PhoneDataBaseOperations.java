package edu.j2ee.phoneapp.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import edu.j2ee.phoneapp.dto.Phone;


public class PhoneDataBaseOperations 
{
	private final static String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private final static String DB_URL = "jdbc:mysql://localhost:3307/ContactFile?user=root&password=root";
	
    public Phone SearchContact(String Name)
    {
    	Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "SELECT * FROM ContactFile.contact WHERE Name = ?";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, Name);
		
			
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				String name = rs.getString(1);
				String Number = rs.getString(2);
				String email = rs.getString(3);
				String date = rs.getString(4);
				
				Phone p = new Phone();
				p.setName(name);
				p.setNumber(Number);
				p.setEmail(email);
				p.setDate(date);
				
				return p ;
				
			}
		} 
		
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
		return null;
		
		}
    
    public ArrayList<Phone> displayContact()
    {
    	Connection con = null;
		Statement pstmt = null;
		ResultSet rs = null;
		ArrayList<Phone> alldetails = new ArrayList<Phone>();
		
		
		try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "SELECT * FROM ContactFile.contact ";
			 pstmt = con.createStatement();
			 rs = pstmt.executeQuery(query);
			
			while(rs.next())
			{
				
				Phone p = new Phone();
				p.setName(rs.getString(1));
				p.setNumber(rs.getString(2));
				p.setEmail(rs.getString(3));
				p.setDate(rs.getString(4));
				
				alldetails.add(p);
				
				
			}
			
		} 
		
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(pstmt != null)
			{
				try 
				{
					pstmt.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			
			if(rs != null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		
		return alldetails ;
		
		}
    
    
    public boolean insertDetails(Phone p)
    {
    	Connection con = null;
		PreparedStatement pstmt = null;
		
    
    	try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "INSERT INTO contact VALUES (?,?,?,?)";
			pstmt = con.prepareStatement(query);
					pstmt.setString(1,  p.getName());
					pstmt.setString(2,   p.getNumber());
					pstmt.setString(3,  p.getEmail());
					pstmt.setString(4,  p.getDate());
			
					int rowseffected = pstmt.executeUpdate();
					if(rowseffected !=0)
					{
						return true;
					}
					
						
					
						
    
    } 
	
			catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			finally 
			{
				if(con != null)
				{
					try 
					{
						con.close();
					} 
					catch (SQLException e)
					{
						e.printStackTrace();
					}
				}
				
				if(pstmt != null)
				{
					try 
					{
						pstmt.close();
					} 
					catch (SQLException e)
					{
						e.printStackTrace();
					}
				}
				
				
			}
	
	return false ;
	
  }
    
    
    public boolean updateContact(Phone c) 
	{
		


		Connection con = null;
		PreparedStatement pstmt = null;
		try 
		{
			Class.forName(DRIVER_CLASS);
			con = DriverManager.getConnection(DB_URL);

			String query = "UPDATE contact  set Number = ?, Email = ? , DOB = ? WHERE Name = ?";
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, c.getNumber());
			pstmt.setString(2, c.getEmail());
			pstmt.setString(3, c.getDate());
			pstmt.setString(4, c.getName());
			

			int rowsAffected = pstmt.executeUpdate();
			if(rowsAffected > 0 )
			{
				return true ;
			}



		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally 
		{
			if(con != null)
			{
				try 
				{
					con.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			if(pstmt != null)
			{
				try
				{
					pstmt.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
		return false ;
	}
    
    public boolean deleteContact(String name)
    {
    	Connection con = null;
		PreparedStatement pstmt = null;
		
    
    	try
		{
			Class.forName(DRIVER_CLASS);
			
			con = DriverManager.getConnection(DB_URL);
			
			String query = "Delete  from contact where name =?";
			pstmt = con.prepareStatement(query);
					pstmt.setString(1, name);
			
					int rowseffected = pstmt.executeUpdate();
					if(rowseffected !=0)
					{
						return true;
					}
					
						
					
						
    
    } 
	
			catch (ClassNotFoundException e)
			{
				e.printStackTrace();
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
			finally 
			{
				if(con != null)
				{
					try 
					{
						con.close();
					} 
					catch (SQLException e)
					{
						e.printStackTrace();
					}
				}
				
				if(pstmt != null)
				{
					try 
					{
						pstmt.close();
					} 
					catch (SQLException e)
					{
						e.printStackTrace();
					}
				}
				
				
			}
	
	return false ;
	
  }
    
    
}
  

