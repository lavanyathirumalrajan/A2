/**
 * 
 */
$(function() {
	loadAllUploadedFiles();
});

function loadAllUploadedFiles(){
	$.ajax({
		url : 'viewFiles',
		type : 'POST',
		contentType : 'application/json',
		data : '',
		beforeSend: function() {
			$("div#divLoading").addClass('show');
	    },
	    complete: function() {
	    	$("div#divLoading").removeClass("show");
	    },
		success : function(response) {
// alert(JSON.stringify(response))
			
		$("#example").dataTable().fnClearTable();
		$("#example").dataTable().fnDraw();
		$("#example").dataTable().fnDestroy();
			  
		 for(var i=0;i<response.length;i++){
		 var body = "<tr>";
		 body += "<td>" + response[i].fileDetailsDto.fileName + "</td>";
		 body += "<td>" + response[i].fileType + "</td>";
		 body += "<td>" + response[i].startDate + "</td>";
		 body += "<td>" + response[i].endDate + "</td>";
		 body += "<td>" + response[i].status + "</td>";
		 body += '<td><a href="viewFileContent?id='+response[i].id+'" class="fa fa-eye" style="color:#fc8213;font-size: 20px;" target="_blank"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="fa fa-pencil-square-o" aria-hidden="true" style="color:##337ab7;font-size: 20px;" data-toggle="modal" onclick="editFile('+response[i].id+')"></a>&nbsp;&nbsp;&nbsp;<a href="downloadFile?id='+response[i].id+'" class="fa fa-download" style="color:#68AE00;font-size: 20px;"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" class="fa fa-trash" style="color:red;font-size: 20px;" onclick="deleteFile('+response[i].id+')"></a</td>';
		 body += "</tr>";
		 $( "#example tbody" ).append(body);
		 };
 
		 /* DataTables instantiation. */
		 $( "#example" ).DataTable();
			
		},

		error : function(error) {

			console.log(error);

		}

	});
}

function deleteFile(id){
	 $.ajax({
			url : 'deleteFiles?id='+id,
			type : 'POST',
			contentType : 'application/json',
			data : '',
			beforeSend: function() {
				$("div#divLoading").addClass('show');
		    },
		    complete: function() {
		    	$("div#divLoading").removeClass("show");
		    },
			success : function(response) {
	swal("Done!",
						"File Detials Deleted!",
						"success").then((value) => {
// location.reload();
							loadAllUploadedFiles();

	});			
	},

			error : function(error) {

				console.log(error);

			}

		});
}

function editFile(id){
    $('#exampleModalCenter').modal('show');
	 $.ajax({
			url : 'editFile?id='+id,
			type : 'POST',
			contentType : 'application/json',
			data : '',
			success : function(response) {
			$("#editFileText").html('');
			$("#editFileText").html(response);
			$("#primaryKey").val(id);
	        },

			error : function(error) {

				console.log(error);
			}

		});
}
function saveEditText(){
 var id=$("#primaryKey").val();
 var editedData=$("#editFileText").html();
 $('#exampleModalCenter').modal('hide');

 $.ajax({
		url : 'saveFileEditedData?id='+id+'&editedData='+editedData,
		type : 'POST',
		contentType : 'application/json',
		data : '',
		beforeSend: function() {
			$("div#divLoading").addClass('show');
	    },
	    complete: function() {
	    	$("div#divLoading").removeClass("show");
	    },
		success : function(response) {
			if(response=='SUCCESS'){
				swal("Done!",
						"File edited data Saved!",
						"success").then((value) => {
// location.reload();
							loadAllUploadedFiles();

			});		
			}else{
				
				swal("Failed!",
						"Failed to save file edited data!",
						"error").then((value) => {
	
			});		
				
			}
			
      },

		error : function(error) {

			console.log(error);

		}

	});
}

function claerInputFields(){
	document.getElementById("fileUploads").reset();
}

