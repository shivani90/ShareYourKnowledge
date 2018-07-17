page<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Company name | Homepage</title>

<!-- This template was created by Mantis-a [http://www.mantisa.cz/]. For more templates visit Free website templates [http://www.mantisatemplates.com/]. -->

<meta name="Description" content="..." />
<meta name="Keywords" content="..." />
<meta name="robots" content="all,follow" />
<meta name="author" content="..." />

<meta http-equiv="Content-Script-Type" content="text/javascript" />

<!-- CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />

<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
</head>

<body id="top">

	<!-- Header -->
<div id="header">
		<h1><a href="/">Share Your Knowledge </a></h1>
				<p> These web application is all about the sharing of your knowledge with Society...... </p>

</div>
	<!-- Header end -->

<!-- Menu -->
	<div id="menu-box" class="cleaning-box">
	<a href="#skip-menu" class="hidden">Skip menu</a>
		<ul id="menu">
			<li><a href="home.jsp"  class=" first active">Home</a></li>
			<li><a href="aboutus.jsp" >About Us</a></li>
			<li><a href="signup.jsp" >Sign Up</a></li>
			<li><a href="signin.jsp" >Sign In </a></li>
		
			<li><a href="contactus.jsp" >Contact us </a></li>
		</ul>
	</div>
	<!-- Menu end -->

<hr class="noscreen" />

<div id="skip-menu"></div>
	<div class="content">
		<div class="content-in">
			<div class="column-left">
				<div class="column-left-in">
				
					
					
		
				
					<p class="text-content">
					
					<form action = "#">
					     <h2>REGISTRATION</h2>
                <table border="0" cellpadding="0" cellspacing="20">
				      <tr><td> ID</td><td><input type="text" name="id"></td></tr>
                    <tr><td>Name</td><td><input type="text" name="sname"></td></tr>
                    <tr><td> Father's name</td><td><input type="text" name="fname"></td></tr>
                     <tr><td>password</td><td><input type="text" name="pwd" ></td></tr>
                    <tr><td> Contact no</td><td><input type="text" name="contact"></td></tr>
                     <tr><td>Email id</td><td><input type="text" name="email"></td></tr>
					  <tr><td> Mobile no</td><td><input type="text" name="mobile"></td></tr>
					  
					  
					  
					  
					  <tr><td> choose gender:</td><td>male<input type="radio" name="gen" value="Male">female<input type="radio" name="gen" value="Female"></td></tr>
                   
                    <tr><td colspon="3" align="center">  <input type="submit" name="ok" value="submit">
      <%              
                      try
        {
                       if(request.getParameter("ok")!=null)
                          {
             String Id =request.getParameter("id");
              String name =request.getParameter("sname");
              String fname =request.getParameter("fname");  
            String pwd=request.getParameter("pwd");
              String contact=request.getParameter("contact");
           
            String email =request.getParameter("email");
             String mobile =request.getParameter("mobile");
            String gen=request.getParameter("gen");
            
            
           
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        Connection con=DriverManager.getConnection("jdbc:odbc:data","","");
        PreparedStatement pt=con.prepareStatement("Insert into regi values(?,?,?,?,?,?,?,?)");
        pt.setString(1,Id);
        pt.setString(2,name);
        pt.setString(3,fname);
        pt.setString(4,pwd);
        pt.setString(5,contact);
         pt.setString(6,email); 
         pt.setString(7,mobile);
         pt.setString(8,gen);
        pt.executeUpdate();
        pt.close();
        con.close();
        out.println("data is saved");
        }
        }
        catch(Exception ob)
        
        {
            out.println(ob);
            
        }
      
                    
        %>            
                    
                    </td></tr>
                </table>
               </form>
					 </p>
                    <hr class="noscreen" />

					<p class="text-content">&nbsp;</p>

                    <hr class="noscreen" />
                    <div class="cleaner">&nbsp;</div>

<hr class="noscreen" />

					<h2>Trendy..</h2>

					<div class="cleaner">&nbsp;</div>
<br />
<div class="ornament">&nbsp;</div>
                     
					  <div class="showcase"><a href="#"><img src="img/sy0.jpg" width="150" height="95" alt="#" /></a>
						<a href="#"><img src="img/sy1.jpg" width="150" height="95" alt="#" /></a> 
						<a href="#"><img src="img/sy2.jpg" width="150" height="95" alt="#" /></a> 
						<a href="#"><img src="img/sy.jpg" width="150" height="95" alt="#" /></a>
												
				  </div>

			  </div> <!-- Column left in end -->
			</div> <!-- Column left end -->

<hr class="noscreen" />

			<div class="column-right">
			  <div class="column-right-in">
					<div class="leaf-body">
					<div class="leaf-top">
					<div class="leaf-bottom">
						<h3>Web services.</h3>
						<p>The site acts as an office that is open 24/7.It increases the knowledge sharing approach of the students and also students will come to known about the                           trending things in society .</p>
					</div>
					</div>
						
						<div class="listecky">&nbsp;</div>
					</div>

						<h3> gallery</h3>
						<div class="showcase"><a href="#"><img src="img/syk.png" width="120" height="85" alt="#" /></a>
						<a href="#"><img src="img/sykk1.jpeg" width="120" height="85" alt="#" /></a> 
						<a href="#"><img src="img/sykk.jpeg" width="120" height="85" alt="#" /></a> 
						<a href="#"><img src="img/sykk3.jpeg" width="120" height="85" alt="#" /></a>
						
				  </div>
<div class="cleaner">&nbsp;</div>

			  </div>
				<!-- Column right in end -->
			</div> <!-- Column right end -->

		</div> <!-- Content in end -->
		<div class="cleaner">&nbsp;</div>
	</div> <!-- Content end -->

<hr class="noscreen" />

	<div id="footer-box">
		<div id="footer">
			<ul>
		<li><a href="home.jsp"  class=" first active">Home</a></li>
			<li><a href="aboutus.jsp" >About Us</a></li>
			<li><a href="signup.jsp" >Sign Up</a></li>
			<li><a href="signin.jsp" >Sign In </a></li>
		
			<li><a href="contactus.jsp" >Contact us </a></li>
		</ul>

			<p class="print"><a id="print" href="#">Print</a> | <a href="#top">Top</a> ↑</p>
			<div class="cleaner">&nbsp;</div>
			<p id="backs"><a href="http://www.mantisatemplates.com/">Designed and developed </a>
                for our customer. </p>
		</div>
	</div>

        



</body>
</html>
