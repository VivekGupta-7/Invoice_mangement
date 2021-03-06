<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("key_0");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "high_radius";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>

<!-- ------------------------------------------ -->


<head>
	<meta charset="utf-8">
	<title>High Radius</title>

	<link rel="stylesheet" type="text/css" href="style.css">

 <!-----------------------Font icons---->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<!-- ------------------------------- -->
<body>

<!-- ------------------------------------------------------------------------- -->

<!----------Header ----->

    <div class="header">
          <a  href="#default" class="logo"><img src="C:\Users\kumar\Desktop\High_radius_UI_part\logo\abc_logo.svg" ></a>
        <div class="header-center">
    
          <a href=""><img src="C:\Users\kumar\Desktop\High_radius_UI_part\logo\logo.png" width="70%"></a>
     
        </div>
     </div>
     <div class="header2">
         <a href="#default" class="logo1">Invoice List</a>
     </div>



     <!--------------Some function add , edit , delete------------->

     <div class="iconfun">

      <!--------------search ----->
     

      <input id="addme" type="text"  placeholder="Search by invoice Number">

      
      <!--------------search  end----->

       <!-- ---------------------------Delete Button------------------------ -->

       <!-- Trigger/Open The Modal -->
        <button id="del_myBtn" style="font-size:14px"><i class="fa fa-delete"> -  Delete</i></button>


<!-- The Modal -->
<div id="del_myModal" class="del_modal">

  <!-- Modal content -->
  <div class="del_modal-content">
    <div class="del_modal-header">
      <span class="del_close">&times;</span>
      <h2>Delete record(s)?</h2>
    </div>

    <hr class="horiz_line">

    <div class="del_modal-body">
      <p>You'll lose your record(s) after this action. We can't recover them once you delete.</p><br>

       <p>Are you sure you want to <mark style="color: red; background-color:#2A3F4D;"> permanently delete</mark> them?</p>

    </div>

    <hr class="horiz_line">

    <div class="del_modal-footer">
      <div class="del_part1">

                 <button style="margin-right: 20px;" type="clear">Cancel</button>
         <button type="submit">Delete</button>

      </div>
    </div>
  </div>

</div>


 <!-- ------------------------------------------Edit Button----------------------------- -->
 <!-- Trigger/Open The Modal -->
 <button id="edit_myBtn" style="font-size:14px"><i class="fa fa-edit">Edit</i></button>
<!-- <button id="edit_myBtn">Open Modal</button> -->

<!-- The Modal -->
<div id="edit_myModal" class="edit_modal">

  <!-- Modal content -->
  <div class="edit_modal-content">
    <div class="edit_modal-header">
      <span class="edit_close">&times;</span>
      <h2>Edit Invoice</h2>
    </div>

    <hr class="horiz_line">


    <div class="edit_modal-body">
 <label for="Invoice_amnt"><b>Invoice Amount</b></label>
    <input style="background-color: #283A46; margin: 10px; border-radius: 7px; font-size: 15px;" type="text" placeholder="Enter Invoice Amount" name="Invoice_amnt" required><br><br><br>

    <label for="Notes">Notes:</label>
      <textarea   style="padding:50px ;margin: 10px 0px 10px 40px;background-color: #283A46; border-radius :10px; float:right;" name="comment" form="usrform" >
       Enter Note here...</textarea><br><br>

          </div>

          <hr class="horiz_line">

    <div class="edit_modal-footer">
      
      <div class="edit_part2">
        <input type="reset" value="Clear">
          <input  type="submit" value="Add">

      </div>

      <div class="edit_part1">
       <input type="reset" value="Cancel">
      </div>
    </div>
  </div>

</div>

  
  <!-----------------Add Button ----------------------------->

       <!-- Open The Modal -->
<button id="Add_myBtn" style="font-size:14px"><i class="fa fa-add">+ Add</i></button>

<!-- The Modal -->
<div id="Add_myModal" class="Add_modal">

  <!-- Modal content -->
  <div class="Add_modal-content">
    <div class="Add_modal-header">
      <span class="Add_close">&times;</span>
      <h2>ADD INVOICE</h2>
    </div>
    <hr class="horiz_line">
    <div class="Add_modal-body">
      <div class="Add_part1">

        <div id="Add_cust_val">
         <label for="cust_name"><b>Customer Name<a style="color:red">*</a></b></label>
    <input style="background-color: #283A46;  border-radius: 5px;" type="text" placeholder="Enter Customer Name" name="cust_name" required><br><br>
       </div>

    <div id="Add_cust_val">
         <label for="cust_num"><b>Customer Number<a style="color:red">*</a></b></label>
    <input style="background-color: #283A46; border-radius: 5px;  " type="text" placeholder="Enter Customer Number" name="cust_num" required><br><br>
       </div>

<div id="Add_cust_val">
         <label for="Invoice_Num"><b>Inoice Number<a style="color:red">*</a></b></label>
    <input style="background-color: #283A46; border-radius: 5px;  " type="text" placeholder="Enter Inoice Number" name="Invoice_Num" required><br><br>
       </div>

<div id="Add_cust_val">
         <label for="Invoice_amnt"><b>Invoice Amount<a style="color:red">*</a></b></label>
    <input style="background-color: #283A46; border-radius: 5px;  " type="text" placeholder="Enter Invoice Amount" name="Invoice_amnt" required><br><br>
       </div>


        
      </div>

      <div class="Add_part2" style="padding: 20px; margin: 10px;">
      
      
  <label for="due_date">Due Date:<a style="color:red">*</a></label>
  <input style="background-color: #283A46;" type="date" id="due_date" name="due_date">
  <input type="submit"><br><br>


      <label for="Notes">Notes:</label><br>
      <textarea   style="padding:50px  ;margin: 10px;background-color: #283A46;" name="comment" form="usrform" >
       Enter text here...</textarea><br><br>


       </div>

    </div>
     <hr class="horiz_line">
    
    <div class="Add_modal-footer">

      <div class="Add_part2">
        <input type="reset" value="Clear">
          <input style="margin 10px;" type="submit" value="Add">

      </div>

      <div class="Add_part1">
        <input type="reset" value="Cancel">
      </div>
     
    </div>
  </div>

</div>

       
  


     </div>
     
     <!--------------Some function add , edit , delete    End------------->






<!-- ----------------------------------------------------------------------- -->


<table >
<thead>

<div class="showSlide">
<div class="tableb">
     <table class="table">
     <thead>
           <tr>
  
     			<th><input type="checkbox" id="" name="" value=""></th>
     			<th>Customer Name</th>
     			<th>Customer#</th>
     			<th>Invoice#</th>
     			<th>Invoice Amount</th>
     			<th>Due Date</th>
     			<th>Predicted Payment Date</th>
     			<th>Notes</th>
     	    
  </tr>
   </thead>
   <tbody>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from mytable";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><input type="checkbox" id="" name="" value=""></td>
<td><%=resultSet.getString("name_customer") %></td>
<td><%=resultSet.getString("cust_number") %></td>
<td><%=resultSet.getString("invoice_id") %></td>
<td><%=resultSet.getString("total_open_amount") %></td>
<td><%=resultSet.getString("due_in_date") %></td>
<td><%=resultSet.getString("predicted_date") %></td>
<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit</td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tbody>
</table>
</div>
</body>
</html>

<script>
// Get the modal
var modal = document.getElementById("Add_myModal");

// Get the button that opens the modal
var btn = document.getElementById("Add_myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("Add_close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>



<!-- ------------------------------------Edit button Js------------------------------------------------- -->


<script>
// Get the modal
var edit_modal = document.getElementById("edit_myModal");

// Get the button that opens the modal
var edit_btn = document.getElementById("edit_myBtn");

// Get the <span> element that closes the modal
var edit_span = document.getElementsByClassName("edit_close")[0];

// When the user clicks the button, open the modal 
edit_btn.onclick = function() {
  edit_modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
edit_span.onclick = function() {
  edit_modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == edit_modal) {
    edit_modal.style.display = "none";
  }
}
</script>


<!-- ---------------------------------Delete button js------------------------------------------ -->
<script>
// Get the modal
var del_modal = document.getElementById("del_myModal");

// Get the button that opens the modal
var del_btn = document.getElementById("del_myBtn");

// Get the <span> element that closes the modal
var del_span = document.getElementsByClassName("del_close")[0];

// When the user clicks the button, open the modal 
del_btn.onclick = function() {
  del_modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
del_span.onclick = function() {
  del_modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == del_modal) {
    del_modal.style.display = "none";
  }
}
</script>