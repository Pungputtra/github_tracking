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
  			<div class="container">
  				<a class="navbar-brand" href="index.jsp">Sales Tracking</a>
  				<p class="navbar-text navbar-right"> <%=sessionUser %>&nbsp;&nbsp;<a href="logout.do" class="navbar-link">Logout</a></p>
  			</div>
		</nav>
		
	<!-- End Navbar -->
	
	
	
	
	
	
	