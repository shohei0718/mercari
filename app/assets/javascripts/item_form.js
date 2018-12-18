$(function(){


// 価格入力連動
  $('#input__price').on('input', function(){
  	var inputPrice = $(this).val();
    if(inputPrice >= 300 && inputPrice <= 9999999){
  	  var commission = Math.floor(inputPrice * 0.1).toLocaleString();
      var profit = Math.ceil(inputPrice * 0.9).toLocaleString();
      $('#output').text("¥" + commission);
  	  $('#output2').text("¥" + profit);
    }else{
  	  $('#output').text("-");
  	  $('#output2').text("-");
    }
  });
});

