// $(document).ready(function(){
//   $('#credit-information').on('submit', function(){
//     var card_num = $('#card_num').val();
//     var security_num = $('#security_num').val();

//     console.log(card_num)
//     console.log(security_num)

//     var url = $('#new_payment_information').attr('action')

//     $.ajax({
//       url: url,
//       type: "POST",
//       data: {card: card_num, security: security_num},
//       dataType: 'json',
//       processData: false,
//       contentType: false,
//     })

//     .done(function(data){
//         console.log("成功")
//     })
//     .fail(function(){
//         alert('入力内容が正しいかどうかご確認ください');
//         $('.submit').prop('disabled', false);
//         $('.form__submit').prop('disabled', false);
//     });
//   });
// });
