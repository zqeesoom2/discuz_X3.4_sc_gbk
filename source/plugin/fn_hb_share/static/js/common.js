$(function() {  
	FastClick.attach(document.body);  
});
window.addEventListener("DOMContentLoaded", function() {
	var BusinesssSwiper = new Swiper('.Businesss .swiper-container', {
        slidesPerColumn: 1,
        paginationClickable: true,
		slidesPerView: 'auto',
		observer:true,
		observeParents:true
   });
});
