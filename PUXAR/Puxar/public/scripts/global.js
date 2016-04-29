//global
var productlist=new Array();
	
$(document).ready(function(){
	//make ajax call to get item list
	makecall();
})

function makecall(product,flag){
	
	product='{"product": "'+product+'"}';
	product=jQuery.parseJSON(product);
	
	$.ajax({
		
	    url: '/',
	    data: product,
        type: 'POST',
        jsonpCallback: 'callback',
        timeout:2000,
        success: function (data) {
        	if(flag)
        	showproduct(data);
        	else        	
        	  loadlist(data);
        },
        error: function (xhr, status, error) {
            console.log('Error: ' + error.message);	        
        },
});
}

function loadlist(data){
	jQuery.each(data, function(i,val){
		productlist.push(data[i].PNAME);
	});
	
	$('#searchtext').autocomplete({
		source: productlist
	});
}

function searchitem(){	
	var product=$("#searchtext").val().toLowerCase();

	makecall(product,true);
}

function showproduct(data){
	//alert(data[0].PNAME);
	$('#search').hide();
	$('#productinfo').html(data[0].PNAME);
}