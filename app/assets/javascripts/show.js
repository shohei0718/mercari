$(document).ready(function(){
  $('.slide-box').on('mouseover', function(){
    $('#main-box').attr("src", $(this).attr("src"))
    $(this).css('opacity', '1.0')
  });

  $('.slide-box').on('mouseout', function(){
    $(this).css('opacity', '0.5')
  });
});
