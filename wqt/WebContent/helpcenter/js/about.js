$(()=>{
    $(".enterprise-index-i-a").hover(function(){
		$(this).find(".enterprise-index-i-a-pubb").show();
		$(this).find(".enterprise-index-i-a-pubt").hide();
	},function(){
		$(this).find(".enterprise-index-i-a-pubb").hide();
		$(this).find(".enterprise-index-i-a-pubt").show();
	});
})