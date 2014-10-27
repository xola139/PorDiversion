<%@ page import="com.pordiversion.bean.Imagen" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java"  %>
<%
  String getURL=request.getRequestURL().toString();
  String path = request.getContextPath();
  String getDomain=request.getServerName();
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PorDiversion</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/2-col-portfolio.css" rel="stylesheet">
	<link href="css/ladda-themeless.min.css" rel="stylesheet">
	<link href="css/custom.css" rel="stylesheet">
	
	

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  
  
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/custom-functions.js"></script>
  
	
	<script>

	
    		
                    
	        

	
	</script>
	
	
	
  </head>
  <body >
  
  <script>

</script>
  
  



  
    

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    
    
     <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">
                
                <div class="contentNav" >
                	<div>
                	   <a   href="#"><img src="images/logo.png"  class="img-circle" style="width: 30px;height: 30px;"/>Solo por Diversi&oacute;n </a>
                	</div>
                	
					
                </div>
                
                
                
                
            </div>


        </div>
        <!-- /.container -->
    </nav>
    <br><br>
    <br>
 <div class="container-fluid">   
    
    
	    <div class="panel panel-default"  style="width: 80%;margin: 0 auto;">
		  	<div class="panel-body">
			  	<div class="centrardiv">
			  	<img class="img-responsive img-thumbnail" style="width:auto; height:auto;" src="<%=request.getAttribute("URLimagen")%>" />
			  	<a href="/" class="btn btn-primary btn-lg active" role="button">Ver Mas Imagenes</a>
			  	</div>
				
	  		</div>
		</div>

    
    
    
</div>	
    
  <div class="myFooter">
            <div class="row">
                <div class="">
                    <p>Copyright &copy; Por Diversion 2014</p>
                </div>
            </div>
        </div> 
    <script src="js/funciones-QueJalada.js"></script>
    <script src="js/spin.min.js"></script>
    <script src="js/ladda.min.js"></script>
 		


  </body>
</html>

