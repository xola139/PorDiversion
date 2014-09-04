$(document).ready(function() {
	 
   $(".contentNav a").on("click",function(e){
	   
	   var id=$(this).attr('id');
	   var replaceID = id.replace("xd_", "");
	   
	   $('#myTab li:eq('+replaceID+') a').tab('show');
   });
   
  
   
   
});