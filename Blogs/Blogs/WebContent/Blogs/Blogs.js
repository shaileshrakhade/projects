/**
 * 
 */

function showBlogs(id)
{
	$.get(window.location.origin+"/Blogs/Blogs/process.jsp?Update="+id, function( resp ) {
		console.log("Resp :- "+resp);
		
		//var jsps = JSON.stringify(resp);         
		var json = JSON.parse(resp);  		
        $("#txtTital").val(json.title);
        $("#txtblogContent").text(json.content);
        $("#txtId").val(json.post_id);
        $("div.col-sm-12  select").val(json.post_type);
       // var e = document.getElementById("ddlposttype");
       // e.options[e.selectedIndex].value=text(json.post_type);
      
    });
}


function showBlogsCommnets(id)
  {
	  
	  document.getElementById("txtCommnetPostId").value =id;
	  console.log("Respid :- "+id);
	  $.get(window.location.origin+"/Blogs/Blogs/process.jsp?GetCommentsId="+id, function( resp ) {
  		console.log("Resp :- "+resp);
  		
  		//var jsps = JSON.stringify(resp);
         
  		var commentdJson = JSON.parse(resp);
  		console.log("json :- "+commentdJson);
   			
  		
          //$("#CommentedText").text(json.comment);
          var comments = "";
          var Allcomments =commentdJson.list;
          
          for( i in Allcomments)
        	  {
        	  	
        	  	comments=comments+"<div class='col-sm-12'><div class='col-sm-9'>Commented By : <label id='CommentedBy'>"
        	  	+ Allcomments[i].fname +
        	  	"</label></div><div class='col-sm-3'>"
        	  	+ Allcomments[i].updated_at +
        	  	"</div></div> 	<div class='col-sm-12'> <label id='CommentedText'>"
        	  	+ Allcomments[i].comment +"</label><hr></div>";
              
        	  }
         
          document.getElementById("CommentSection").innerHTML =comments;
      
          console.log("json :- "+comments);
        
        
          
      });
	 
  }