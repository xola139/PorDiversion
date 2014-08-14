<%@ page import="java.util.List" %>
<%@ page import="com.pordiversion.bean.Imagen" %>
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
  
	
	<script>
	$(document).ready(function(){
		  $("#btnAsiPasa").on("click",function(){
			  var l = Ladda.create(this);
			 	l.start();
			  var nPage=$("#hiddenAsiPasa").val();
			  var newValue=Number(nPage)+6;
			  $.get( "rest/getImagenAsiPasa/"+nPage, function( data ) {
				  $("#hiddenAsiPasa").attr("value",newValue);  
				  $.each(data,function(index,valor){
						$("#contenidoAsiPasa").append("<div class=\"row\">"+
							  "	<div class=\"portfolio-item\">"+
					          "      		<img class=\"img-responsive img-thumbnail\" style=\"width:auto; height:auto;\" src=\""+data[index].img+"\" />"+
					          "		    </div>"+
					          "</div>")
				  });
				}).always(function() {
					l.stop(); 
					});
			});
		  

		  
		  $(window).scroll(function(){
	            if ($(this).scrollTop() > 100) {
	                $('.scrollup').fadeIn();
	            } else {
	                $('.scrollup').fadeOut();
	            }
	        });
	  
	        $('.scrollup').click(function(){
	            $("html, body").animate({ scrollTop: 0 }, 600);
	            return false;
	        });
		  
		  
  
    });
	
	
    		
                    
	        

	
	</script>
	
	
	
  </head>
  <body >
    <a href="#" class="scrollup">Scroll</a>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
    
    
     <nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Navegacion</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="xd.html">Solo por Diversi&oacute;n</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#about">About</a>
                    </li>
                    <li><a href="#services">Services</a>
                    </li>
                    <li><a href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <br><br>
    <br>
 <div class="container-fluid">   
    
    
    <div class="panel panel-default"  style="width: 80%;margin: 0 auto;">
	  <div class="panel-body">
	
	
	<div class="bs-example bs-example-tabs">
    <ul id="myTab" class="nav nav-tabs">
      <li class="active"><a href="#home" data-toggle="tab">Que Jalada</a></li>
      <li><a href="#profile" data-toggle="tab">Esgag</a></li>
      <li><a href="#asipasa" data-toggle="tab">Asi pasa</a></li>
      <li><a href="#ND" data-toggle="tab">Nuevo y D</a></li>
      
    </ul>
    <div id="myTabContent" class="tab-content">
      <div class="tab-pane fade in active" id="home">
      	<div id="contenidoQueJalada">
      		<input type="hidden" value="2" id="hiddenQueJalada">
      		<%
         		List<Imagen> imagenes = (List<Imagen>)request.getAttribute("imagenes");
				int nv=0;
				for(Imagen e : imagenes){
			    	if(nv==0){
			    		%>
              			<div class="row">
					<%}%>
		            		<div class="portfolio-item">
		                		<img class="img-responsive img-thumbnail" style="width:auto; height:auto;" src="<%=e.getImg() %>" />
		        		    </div>
					<%nv++;
					  if(nv==2){
					%>
						</div>
					<%nv=0; 
					}
					}//fin for
					  if(nv==1){
						%>
						</div>
					<% }
					%>
        	</div>
                
                <div class="centrardiv">
                	<button  id="btnQueJalanda" class="btn btn-primary ladda-button" data-style="expand-left"><span class="ladda-label" >Quiero ver mas.. Ahora!!!</span><span class="ladda-spinner"></span><div class="ladda-progress" style="width: 0px;"></div></button>
                </div>
                
                
	  </div>
      <div class="tab-pane fade" id="profile">
      
        <%
         		List<Imagen> imagenesEsgag = (List<Imagen>)request.getAttribute("imagenesEsgag");
				nv=0;
				for(Imagen e : imagenesEsgag){
			    	if(nv==0){
			    		%>
              			<div class="row">
					<%}%>
		            		<div class="portfolio-item">
		                		
			    	                    <img class="img-responsive img-thumbnail" style="width:auto; height:auto;" src="<%=e.getImg() %>" />
		        		        
		                	</div>
					<%nv++;
					  if(nv==2){
					%>
						</div>
					<%nv=0; 
					}
					}//fin for
					  if(nv==1){
						%>
						</div>
					<% }
					%>
					
			
                
        
      </div>
      
       <div class="tab-pane fade" id="asipasa">
         <div id="contenidoAsiPasa">
      		<input type="hidden" value="5" id="hiddenAsiPasa">
       <%
         		List<Imagen> imagenesChistedia = (List<Imagen>)request.getAttribute("imageneshistedeldia");
				nv=0;
				for(Imagen e : imagenesChistedia){
			    	if(nv==0){
			    		%>
              			<div class="row">
					<%}%>
		            		<div class="portfolio-item">
		                		
			    	                    <img class="img-responsive img-thumbnail" style="width:auto; height:auto;" src="<%=e.getImg() %>" />
		        		        
		                	</div>
					<%nv++;
					  if(nv==2){
					%>
						</div>
					<%nv=0; 
					}
					}//fin for
					  if(nv==1){
						%>
						</div>
					<% }
					%>
       
       
       </div>
				<div class="centrardiv">
                	<button  id="btnAsiPasa" class="btn btn-primary ladda-button" data-style="expand-left"><span class="ladda-label" >Quiero ver mas.. Ahora!!!</span><span class="ladda-spinner"></span><div class="ladda-progress" style="width: 0px;"></div></button>
                </div>
 
        
      </div>
      
      
          <div class="tab-pane fade" id="ND">
          
          
          
             <%
         		List<Imagen> imagenesND = (List<Imagen>)request.getAttribute("imagenesND");
				nv=0;
				for(Imagen e : imagenesND){
			    	if(nv==0){
			    		%>
              			<div class="row">
					<%}%>
		            		<div class="portfolio-item">
		                		
			    	                    <img class="img-responsive img-thumbnail" style="width:auto	; height:auto;" src="<%=e.getImg() %>" />
		        		        
		                	</div>
					<%nv++;
					  if(nv==2){
					%>
						</div>
					<%nv=0; 
					}
					}//fin for
					  if(nv==1){
						%>
						</div>
					<% }
					%>
       
          
     
      </div>
      
      
    </div>
  </div>
	
	
	
	
	
	
	
	
	  </div>
	  </div>
    
    <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Por Diversion 2014</p>
                </div>
            </div>
        </footer>
    
</div>	
    
    
    <script src="js/funciones-QueJalada.js"></script>
    <script src="js/spin.min.js"></script>
    <script src="js/ladda.min.js"></script>
 		


  </body>
</html>

