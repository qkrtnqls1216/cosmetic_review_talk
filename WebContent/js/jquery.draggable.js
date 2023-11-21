(function($){
	$.fn.mobileDragable=function(options){
		options=$.extend({
			width: 1000,
			itemWidth: 200,
			total: 10
		}, options);

		return this.each(function(){
			var $dragBanner=$(this);
			var xDown=null; // x 좌표의 클릭 위치 변수입니다.
			var yDown=null; // y 좌표의 클릭 위치 변수입니다.
			var num=0; // 배너 이동 번호 변수입니다.
			var movingOffset=0; // 배너 이동량 변수입니다.
			var productWidth=$(options.width)[0]; // 배너 컨테이너 가로 크기 변수입니다.
			var bannerWidth=$(options.itemWidth)[0]; // 하나의 배너 가로 크기 변수입니다.
			// var productTotal=Math.ceil(productWidth/bannerWidth);
			var productTotal=$(options.total)[0]; // 배너의 개수 변수입니다.

			document.addEventListener("touchstart", handleTouchStart);
			document.addEventListener("touchmove", handleTouchMove);

			function handleTouchStart(evt){
				xDown=evt.touches[0].clientX;
				yDown=evt.touches[0].clientY;
			}
			function handleTouchMove(evt){
				if(!xDown || !yDown){
					return;
				}

				var xUp=evt.touches[0].clientX;
				var yUp=evt.touches[0].clientY;
				var xDiff=xDown-xUp;
				var yDiff=yDown-yUp;

				if(Math.abs(xDiff) > Math.abs(yDiff)){
					if(xDiff > 0){
						/* left swipe */
						if(num < (productTotal-1)){
							num++;
							movingOffset=bannerWidth*num*(-1);
							$dragBanner.animate({left:movingOffset}, 400);
						}
						// console.log("swipe left!!");
					}else{
						/* right swipe */
						if(num > 0){
							num--;
							movingOffset=bannerWidth*num*(-1);
							$dragBanner.animate({left:movingOffset}, 400);
						}
						// console.log("swipe right!!");
					}
				}else{
					if(yDiff > 0){
						/* up swipe */
					}else{
						/* down swipe */
					}
				}
				/* reset values */
				xDown=null;
				yDown=null;
			};
		});
	}
})(jQuery);