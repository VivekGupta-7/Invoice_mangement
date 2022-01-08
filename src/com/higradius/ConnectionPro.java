package com.higradius;
/*package com.higradius;*/

/*package com.higradius;*/
import java.sql.*;
public class ConnectionPro {
	public static Connection getCon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/high_radius","root","root");
			return conn;
	}
		catch(Exception e) {

		System.out.println(e);
		return null;
}
	}

}





