/**
 * 
 */

$(document) read(function(){
	$('.table .eBtn').on('click',function(event){
		event.preventDefault();
		var href = $(this).attr('href')
		
		$.get(href,function(hoadon,status){
			$('#iMaKH').val(hoadon.iMaKH)
			$('#iMaNV').val(hoadon.iMaNV)
			$('#iLoaiHoaDon').val(hoadon.iLoaiHoaDon)
		});
		
		$('HoaDon').modal();
	});
}); 
