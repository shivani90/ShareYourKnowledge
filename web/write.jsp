<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Post - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/blog-post.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="home.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Title -->
          <h1 class="mt-4">Post</h1>

          <!-- Author -->
          <p class="lead">
            
            <a href="#"> </a>
          </p>

          <hr>

          <!-- Date/Time -->
          <p></p>

          <!-- Preview Image 
          <img class="img-fluid rounded" src="http://placehold.it/900x300" alt=""> -->

          <!-- Post Content -->
		  <form action="#">
                <div class="form-group">
                  <textarea class="form-control" rows="3" name="data" placeholder="What's in your mind!"></textarea>
                </div>
                <input type="submit" NAME="ok" value="ok">
                
                <%
                  if(request.getParameter("ok")!=null)
				  {
                                        
                                        try
                  {
                                           				 
                  HttpSession ob=  request.getSession();
           String id = ob.getAttribute("user").toString();          
           String data = request.getParameter("data");
           java.util.Date obj = new java.util.Date();
           
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  Connection con =DriverManager.getConnection("jdbc:odbc:data","","");
            PreparedStatement pt=con.prepareStatement("Insert into regi1 values(?,?,?)");
            
                    pt.setString(1,id);
                    pt.setString(2,data);
                    pt.setString(3,obj.toString());
                    
                    
                    pt.executeUpdate();
                    pt.close();
                    con.close();
                    out.println("data is saved");
                    
                    }
                        catch(Exception ob)
                        {
                        out.println(ob);
                        
                        }
                            
                                }
                  
                                
      
                
                %>
                
          </form><br>
		  <h3>Trending Tech</h3><br>
          <p>The IoT which encompasses smart, connected products like smart phones and smart watches is a major contributing factor in this exponential increase in data. That?s because all these smart devices are constantly gathering data, connecting to other devices and sharing that data all without human intervention (your Fitbit synching data to your phone, for instance).</p>
          

          
          <hr>

          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">Leave a Comment:</h5>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>
          </div>

          <!-- Single Comment -->
          <div class="media mb-4">
            <div class="media-body">
              
            </div>
          </div>

          <!-- Comment with nested comments -->
          <div class="media mb-4">
            
            <div class="media-body">
              
              <div class="media mt-4">
            
                <div class="media-body">
                  
                </div>
              </div>

              <div class="media mt-4">
            
                <div class="media-body">
                  
                </div>
              </div>

            </div>
          </div>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header">Search</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Go!</button>
                </span>
              </div>
            </div>
          </div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header">Categories</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Technical</a>
                    </li>
                    <li>
                      <a href="#">Non-Technical</a>
                    </li>
                    <li>
                      <a href="#">e-commerce</a>
                    </li>
                  </ul>
                </div>
         
              </div>
            </div>
          </div>

          <!-- Side Widget -->
          <div class="card my-4">
            <h5 class="card-header">Suggestion</h5>
            <div class="card-body">
              <p>You can put any suggestion you want!</p>
			  
			  <br>
			   <button type="submit" class="btn btn-primary">Suggest</button>
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">&copy; Copyright 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
