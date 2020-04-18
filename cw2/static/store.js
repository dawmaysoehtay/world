$(function(){
	$('#queue').text('waiting for results');
	refreshQueue();
});

function refreshQueue(){
	$.getJSON('/getQueue',function(d){
       $('#queue').empty();
       for(var i=0;i<d.length;i++){
       	 $('<div/>')
       	      .append($('<span/>',{text:d[i].id}))
       	      .append($('<span/>',{text:d[i].status}))
       	      .appendTo('#queue');
       }
	})
}