$(function(){
  $('#close').on('click',function(){
    $('.popup').removeClass('show');
    $('.popup').fadeOut();
    $('#youtube_test').attr('src', '');
  });
});
function test(url){
  $('#youtube_test').attr('src', url);
  $('.popup').attr('id','show').css('display', 'none').fadeIn();
};

var searchItem = '.side-bar__effectors__genre__link';   // 絞り込む項目を選択するエリア
var listItem = '.main__list__effector';       // 絞り込み対象のアイテム
var hideClass = 'is-hide';         // 絞り込み対象外の場合に付与されるclass名
var activeClass = 'is-active';     // 選択中のグループに付与されるclass名

$(function() {
  $(searchItem).on('click', function() {
    $(searchItem).removeClass(activeClass);
    var genre = $(this).addClass(activeClass).data('genre');
    search_filter(genre);
  });
});

function search_filter(genre) {
  $(listItem).removeClass(hideClass);
  if(genre === '') {
    return;
  }
  for (var i = 0; i < $(listItem).length; i++) {
    var itemData = $(listItem).eq(i).data('genre');
    if(itemData !== genre) {
      $(listItem).eq(i).addClass(hideClass);
    }
  }
}
function confirmCart(cart_id) {
  console.log(cart_id);
}

function createCart(userId, effectorId) {
  var param = {
    user_id: userId,
    effector_id: effectorId
  }
  ajaxRequest("api/carts",'post',param)
}

function ajaxRequest(url,type,data) {
  $.ajax({
    url: url,
    type: type,
    dataType: 'json',
    data: data
  })
  .done(function() {
    alert('商品をカートに入れました')
  })
  .fail(function() {
    alert('error');
  });
}