$(document).ready(function(){
  $('.top-main-visuals').slick({
    accessibility: true,
    autoplay: true,
    autoplaySpeed: 1000,
    speed: 700,
    dots: true,
    dotsClass: 'slick-dots',
    prevArrow: '<img src="https://www.mercari.com/jp/assets/img/common/jp/top/carousel-prev.png" class="prev-arrow slick-arrow">',
    nextArrow: '<img src= "https://www.mercari.com/jp/assets/img/common/jp/top/carousel-next.png" class="next-arrow slick-arrow">'
  });
});

$(document).ready(function () {
  $(".file").on('change', function(){
     var fileprop = $(this).prop('files')[0],
         find_img = $(this).parent().find('img'),
         filereader = new FileReader(),
         view_box = $(this).parent('.sell--upload__drop__box__imageview');
    if(find_img){
       find_img.nextAll().remove();
       find_img.remove();
    }
    var imgHTML =  `<div class="sell--upload__drop__box__preview">
                  <img alt="" class="uploadimg">
                    <a class="img_del">
                    画像を削除する
                    </a>
                </div>`;
    view_box.append(imgHTML);
    filereader.onload = function() {
      view_box.find('img').attr('src', filereader.result);
      img_del(view_box);
    }
    filereader.readAsDataURL(fileprop);
  });
  function img_del(target){
    target.find("a.img_del").on('click',function(){
      var self = $(this)
          parentBox = self.parent().parent().parent();
          parentBox.find('input[type=file]').val('');
          parentBox.find('.sell--upload__drop__box__preview').remove();
    });
  }
});
