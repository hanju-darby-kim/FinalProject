
$(document).ready(function() {

	<!-- $('#stuAttCheck').click(function() { -->
	$('#magAttCheck').click(function() {
			
		$.ajax({
			type:'get',
			url:'/api/ex07search.action',
			data:'word='+$('#word').val(),
			success:function(data) {
				//item들
				var items = $(data).find('item');
				
				if (items.length > 0) {
					//결과 있음 -> 초기화부터
					$('#tblList tbody').html('');
					
					//가져온 결과 추가(item -> <item> 태그)
					$(items).each(function(index, item) {
						//alert($(item).find('name').text());
						var tr = '<tr><td>'+$(item).find('seq').text()+
						'</td><td>'+$(item).find('name').text()+
						'</td><td>'+$(item).find('age').text()+
						'</td><td>'+$(item).find('address').text()+
						'</td></tr>';
						$('#tblList tbody').append(tr);
					});
					//검색 박스 내용 초기화
					$('#word').val('');
					$('#word').blur();
				}
			},
			error:function() {
				alert('검색에 실패했습니다');
			}
		});
	});
});