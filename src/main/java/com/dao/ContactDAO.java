package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Contact;

public class ContactDAO {
  
	  private Connection conn;
	  
	  public ContactDAO(Connection conn) {
		  super();
		  this.conn=conn;
	  };
	  public boolean saveContact(Contact c) {
		  boolean f=false;
		  try {
			  String sql="insert into contact(name,email,phno,about,userid) values(?,?,?,?,?)";
			  PreparedStatement ps=conn.prepareStatement(sql);
			  ps.setString(1, c.getName());
			  ps.setString(2, c.getEmail());
			  ps.setString(3, c.getPhno());
			  ps.setString(4, c.getPhno());
			  ps.setInt(5, c.getUserId());
			  
			  int i =ps.executeUpdate();
			  if(i==1) {
				  f=true;
			  }
		  }
		  catch(Exception e) {
			  e.printStackTrace();
		  }
		return f;
		  
	  }
}
