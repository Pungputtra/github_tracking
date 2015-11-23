<body>
<%
String sessionUser = null;
if(session.getAttribute("username") != null)
sessionUser = session.getAttribute("username").toString();

%>


	<style>
  	.navbar
  	{
  		margin-bottom: 0px;
  	}
  	.container{
		width: 100%;
	}
	
	body{
		background-color : #cfe2f3;
	}
	
  	</style>
  	
  	
  	
	<!-- Navbar -->
   	
   		<nav class="navbar navbar-inverse navbar-static-top">
   		
   			<div class="container-fluid">
   			
   				<div class="navbar-header">
	   				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
	   			</div>
	   			
	   			
	  			<ul class="nav navbar-nav navbar-right">
  				
  					<p class="navbar-text"><span class="glyphicon glyphicon-user"></span>&nbsp;<%=sessionUser%></p>
  					
  					<li><a href="logout.do" class="navbar-link"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
  					
  				</ul>
  				
  			</div>
  			
		</nav>
		
	<!-- End Navbar -->
		