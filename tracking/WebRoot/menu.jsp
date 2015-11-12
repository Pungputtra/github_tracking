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
  	</style>
  	
  	
  	
  	<!-- Navbar -->
  	
  		<nav class="navbar navbar-inverse navbar-static-top">
  			<div class="container">
  				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
  				<p class="navbar-text navbar-right"><a href="logout.do" class="navbar-link">Logout</a></p>
  			</div>
		</nav>
		
	<!-- End Navbar -->
	
	
	
	