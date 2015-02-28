$(document).ready(function(){
	//全局弹出dialog确认层
	$(".modal").click(function(){
		var dialog=$(this).data('target');
		$(dialog).fadeIn(300);
	});
	$(".clsModal").click(function(){
		$(".dialog").fadeOut(100);
	})
	//全选列表
	$("#checkbox_all").click(function(){   
	        if(this.checked){   
	            $("input[name='id[]']").each(function(){this.checked=true;});  
	        }else{   
	            $("input[name='id[]']").each(function(){this.checked=false;});   
	        }   
    });
})