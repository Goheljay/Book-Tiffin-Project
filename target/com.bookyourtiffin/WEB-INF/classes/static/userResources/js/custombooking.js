var record_selected = new Array();
var durationarray = new Array();
var person = 1;

$(".malebox").click(function() {
	var aa = $(this)
	if (!aa.is('.maleboxselect')) {
		aa.addClass('maleboxselect');
		var my_id = this.id;
		record_selected.push(my_id);
	} else {
		aa.removeClass('maleboxselect');
		var my_id = this.id;
		var index = record_selected.indexOf(my_id);
		if (index > -1) {
			record_selected.splice(index, 1);
		}
	}
	generateDurationDiv();
});

function selectDuration(type,id,index,mealId){
	
	var ids = [type+'-1-'+mealId,type+'-3-'+mealId,type+'-7-'+mealId]
	
	ids.map(meals => {
		if(meals === id){
			$("#"+id).addClass("durationboxselect");		
			durationarray[index] = id;
		}else{
			$("#"+meals).removeClass("durationboxselect");		
		}
	})
	generateBookinDetails();
}

function generateBookinDetails(){
	
	$('#bookingDetails').html('');
	
	var bookingDetails = '';
	
	
	for(var indexOfArray = 0 ; indexOfArray  < durationarray.length ; indexOfArray ++){

		if(durationarray[indexOfArray] && durationarray[indexOfArray] !== ''){
			var mealDetails = durationarray[indexOfArray].split("-");
			var type = mealDetails[0];
			var day = mealDetails[1];
			var mealId = mealDetails[2];
			
			
			var price = 0;
			
			if(type == 'breakfast'){
				price = 50;
			}else if(type == 'brunch'){
				price = 80;
			}else if(type == 'lunch'){
				price = 120;
			}else if(type == 'dinner'){
				price = 160;
			}
			
			bookingDetails = bookingDetails 
			+'<ul>'
			+'<li><strong>Meal Type</strong><span class="bookdetails">'+type+'</span></li>'
			+'<li><strong>Meal Price</strong><span class="bookdetails">Rs. '+price+'</span></li>'
			+'<li><strong style="margin-right:10px">Duration</strong><span class="bookdetails">'+day+' Days</span></li>'
			+'<li><strong style="margin-right:8px">Quantity</strong><span class="bookdetails"'
			+'id="addquantity">'+person+' Person</span></li>'
			+'<li><strong>Price</strong><span style="margin-left:6em">('+price+' * '+day+' * '+person+')</span><span style="margin-left:3em">Rs. '+(price * person * parseInt(day))+' </span></li>'
			+'</ul><hr>';	
		}
	}
	$('#bookingDetails').html(bookingDetails);
}

function generateDurationDiv(){
	
	$('#durationDiv').html('');
	
	var div = '';
	
	for(var index  = 0 ; index < record_selected.length ; index ++ ){
		
		var mealDetails = record_selected[index].split("-");
		var id = mealDetails[1];
		var type = mealDetails[2];
		var className = ''; 
		
		div = div 
		+ '<div class="col-lg-6">'
		+ '<h5 class="durationtitle" style="width: 132px">'+type+'</h5>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-1-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-1-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>1</h1>'
		+ '	<span>Day</span>'
		+ '</div>'
		+ '</div>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-3-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-3-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>3</h1>'
		+ '	<span>Days</span>'
		+ '</div>'
		+ '	</div>'
		+ '<div onclick="selectDuration(\''+type.toLowerCase()+'\',\''+type.toLowerCase()+'-7-'+id+'\',\''+index+'\','+id+')" class="durationbox  '+type.toLowerCase()+'" id="'+type.toLowerCase()+'-7-'+id+'">'
		+ '<div class="durationboximgdiv">'
		+ '	<h1>7</h1>'
		+ '	<span>Days</span>'
		+ '</div>'
		+ '	</div>'
		+ '	</div>';
 		
	}
	
	$('#durationDiv').html(div);

}

function selectQuantity(quantity){
	
	person = quantity;
	
	$(".quantity").removeClass("durationboxselect");
	$("#quantity"+quantity).addClass("durationboxselect");
	
	generateBookinDetails();
	
}