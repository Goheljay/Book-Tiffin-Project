function viewOrderDetails(id) {
	
	var tiffinBodyId = document.getElementById("dishTableMenu");
	//tiffinBodyId.innerHTML = '';
	var htp = new XMLHttpRequest();

	htp.onreadystatechange = function() {
		if (htp.readyState == 4) {
			var jsn = JSON.parse(htp.responseText);
			var data = '';

			
			for(var index  = 0 ; index <jsn.length ; index++){
				console.log(index);
				data = data + '<tr><td>'+ (index+1) +'</td><td>'+jsn[index].days+'</td>'+
								'<td>'+jsn[index].mealVO.mealType+'</td>'+
								'<td>'+jsn[index].ordervo.id+'</td></tr>';
			}
			
			tiffinBodyId.innerHTML = data;
			
			$("#myModal").modal("toggle");
			//orderRequest = request;
		}
	}

	htp.open("get", "viewOrderDetailsByOrder?id=" + id, true);
	htp.send();

}