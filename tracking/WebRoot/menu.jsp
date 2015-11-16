<body>

	<%
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		
		}
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
		background-color : #DCDCDC;
	}
	
  	</style>
  	
  	
  	
  	<!-- Navbar -->
  	
  		<nav class="navbar navbar-static-top" style="background-color: #B0C4DE;">
  			<div class="container">
  				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
  				<p class="navbar-text navbar-right"><a href="logout.do" class="navbar-link">Logout</a></p>
  			</div>
		</nav>
		
	<!-- End Navbar -->
	
	
	
	
	
	
	