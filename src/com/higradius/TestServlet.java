/*
 * package com.higradius;
 * 
 * import java.io.IOException; import java.sql.Connection; import
 * java.sql.DriverManager; import java.sql.ResultSet; import
 * java.sql.SQLException; import java.sql.Statement; import java.util.ArrayList;
 * import java.util.List;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.google.gson.Gson; import com.google.gson.GsonBuilder;
 * 
 *//**
	 * Servlet implementation class TestServlet
	 */
/*
 * @WebServlet("/TestServlet") public class TestServlet extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 * static final String jdbc_Driver = "com.mysql.jdbc.Driver"; static final
 * String db_url = "jdbc:mysql://localhost:3306/high_radius";
 * 
 * private static final String user_name = "root"; private static final String
 * pass_word = "root";
 * 
 * 
 *//**
	 * @see HttpServlet#HttpServlet()
	 */
/*
 * public TestServlet() { super(); // TODO Auto-generated constructor stub }
 * 
 *//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
/*
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { // TODO Auto-generated
 * method stub //
 * response.getWriter().append("Served at: ").append(request.getContextPath());
 * 
 * response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080");
 * response.setHeader("Access-Control-Allow-Methods", "GET"); Connection conn =
 * null; Statement stm = null; String sql_qry = null; ResultSet rs = null;
 * 
 * List<Response> response_list = new ArrayList<>(); try {
 * Class.forName("com.mysql.cj.jdbc.Driver"); conn =
 * DriverManager.getConnection(db_url, user_name, pass_word); stm =
 * conn.createStatement(); sql_qry
 * ="select name_customer , cust_number , invoice_id , total_open_amount , due_in_date , predicted_date from mytable"
 * ;
 * 
 * rs = stm.executeQuery(sql_qry);
 * 
 * while(rs.next()) { Response response_obj = new Response();
 * response_obj.setName_customer(rs.getString("name_customer"));
 * response_obj.setCust_number(rs.getString("cust_number"));
 * response_obj.setInvoice_id(rs.getString("invoice_id"));
 * response_obj.setTotal_open_amount(rs.getString("total_open_amount"));
 * response_obj.setDue_in_date(rs.getString("due_in_date"));
 * response_obj.setPredicted_date(rs.getString("predicted_date"));
 * 
 * response_list.add(response_obj); } String jsonString =
 * getJSONStringFromObject(response_list);
 * response.setContentType("application/json");
 * 
 * try { response.getWriter().write(jsonString); }catch(IOException e) {
 * e.printStackTrace(); } rs.close(); stm.close(); conn.close();
 * }catch(SQLException se) { se.printStackTrace(); }catch(Exception e) {
 * e.printStackTrace(); }finally { try { if(stm != null) { stm.close(); }
 * }catch(SQLException se2) { try { if(conn != null) { conn.close(); }
 * }catch(SQLException se){ se.printStackTrace(); } } } }
 * 
 *//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *//*
		 * protected void doPost(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { // TODO Auto-generated
		 * method stub doGet(request, response); }
		 * 
		 * private String getJSONStringFromObject(List<Response> filmlist) { Gson gson =
		 * new GsonBuilder().setPrettyPrinting().create(); String json =
		 * gson.toJson(filmlist); System.out.println(json); return json;
		 * 
		 * }
		 * 
		 * }
		 */