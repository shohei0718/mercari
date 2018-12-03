$(function(){
  $('.mypage-tab').on('mouseover', function(){
  	$(".mypage-tab").css({"cursor": "pointer", "opacity": "0.8"});
  })

  $('.mypage-tab').on('mouseout', function(){
  	$(".mypage-tab").css({"cursor": "normal", "opacity": "1.0"});
  })

  $('#tab-notification').on('click', function(){
    $(this).addClass('active');
    $('#tab-todo').removeClass('active');
    $('#mypage-tab-notification').removeClass('not-active').addClass('active');
    $('#mypage-tab-todos').removeClass('active').addClass('not-active');
  })

  $('#tab-todo').on('click', function(){
    $(this).addClass('active');
    $('#tab-notification').removeClass('active');
    $('#mypage-tab-todos').removeClass('not-active').addClass('active');
    $('#mypage-tab-notification').removeClass('active').addClass('not-active');
  })

  $('#tab-transaction-now').on('click', function(){
    $(this).addClass('active');
    $('#tab-transaction-old').removeClass('active');
    $('#mypage-tab-transaction-now').removeClass('not-active').addClass('active');
    $('#mypage-tab-transaction-old').removeClass('active').addClass('not-active');
  })

  $('#tab-transaction-old').on('click', function(){
    $(this).addClass('active');
    $('#tab-transaction-now').removeClass('active');
    $('#mypage-tab-transaction-old').removeClass('not-active').addClass('active');
    $('#mypage-tab-transaction-now').removeClass('active').addClass('not-active');
  })

})