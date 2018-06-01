const jQuery = require('jquery');
const cookie = require("jquery.cookie");

jQuery(function($) {

  let $filterControl = $('.filter__control');

  if ($filterControl.length > 0) {

    $filterControl.on('change', function(e) {
      let $this = $(this),
        $form = $this.closest('form'),
        urlParams = [];

      $form.on('click', function() {
        let $this = $(this);

        $this.find('.filter__popup.open').removeClass('open');
      });

      $.each($form.find('select'), function() {
        let $this = $(this),
          value = $this.prop('value') || '';

        if ('' !== value) {
          urlParams.push({
            key: $this.attr('name'),
            value: value,
          });
        }
      });

      let query = urlParams.map(function(elem){
        return encodeURIComponent(elem.key) + '=' + elem.value;
      }).join('&');

      let url = getQueryUrl(query);

      if (location.href !== url) {

        if ($this.hasClass('filter__control--sorting')) {
          location.href = url;
        } else {

          let setup = Array({
            key: 'where[template]',
            value: $form.data('tpl'),
          },{
            key: 'parent',
            'value': $form.data('catalog'),
          },{
            key: 'action',
            value: 'web/catalog/getdata',
          }).map(function(elem){
            return encodeURIComponent(elem.key) + '=' + elem.value;
          }).join('&');


          $.ajax({
            url: 'assets/components/modcatalog/connectors/connector.php',
            data: query + '&' + setup,
            method: 'get',
            beforeSend: function() {
              let tpl = '<div class="filter__popup">Поиск товаров ...</div>',
                $instance = $this.closest('.select-wrapper').find('.filter__popup');

              if ($instance.length > 0) {
                $instance.html('Поиск товаров ...');
              } else {
                $instance = $(tpl);
                $this.closest('.select-wrapper').append($instance);
              }

              $instance.addClass('open');
            },

            success: function(response) {
              let total = (Object.keys(response.object).length > response.total) ? Object.keys(response.object).length : response.total;

              let $instanse = $this.closest('.select-wrapper').find('.filter__popup');

              if ($instanse.length > 0) {
                let html = 'Найдено товаров: <strong class="text--bold filter--total">' + total + '</strong>';

                if (total > 0) {
                  html += '<a href="' + url + '">Показать</a>';
                }

                $instanse.html(html);
              }
            }
          });
        }
      }
    });
  }

  let $limitSwitchers = $('.switch-limit a:not(.active)');

  if ($limitSwitchers.length > 0) {

    $limitSwitchers.on('click', function(e) {
      e.preventDefault();

      let $this = $(this),
        limit = $this.data('limit'),
        urlData = location.href.split("#")[0].split("?"),
        urlQuery = urlData[1];

      let query = '';

      if (urlQuery) {
        let params = urlQuery.split('&');

        for (let i=0; i < params.length; i++) {
          let param = params[i].split('=');

          if (param[0] != 'limit') {
            query += params[i] + '&';
          }
        }
      }

      query += 'limit=' + limit;
      location.href = urlData[0] + '?' + query;
    });

  }

  function showPopup(params)
  {
    let popupTpl = '<div class="filter__popup"></div>';

    let popup = params.el.find('.filter__popup');

    if (popup.length > 0) {

      $.each(popup.closest('form').find('.filter__popup.open'), function() {
        let $this = $(this);
        $this.removeClass('open');
      });
      popup.find('.filter--total').text(params.total);
      popup.addClass('open');

    } else {

      let $instance = $(popupTpl);
      params.el.append($instance);
      $instance.addClass('open');
    }
  }
});


jQuery(function($){

  // let config = {};
  //
  // const controllers = {
  //
  //     refresh : function (list, animate) {
  //       let total = 0,
  //         $counter = $(config.cart).find('.cart-counter > span');
  //
  //       if ( list.length > 0 ){
  //         jQuery.each( list, function ( i, data ){
  //           total += data.cost;
  //         });
  //         $counter.text( list.length );
  //         if ($counter.is(':hidden')) $counter.show();
  //       } else {
  //         $counter.text('0');
  //         $counter.hide();
  //       }
  //
  //       jQuery(config.cart).find('.quick-cart-summary > span')
  //         .text(function () {
  //           let num = total.toFixed(config.floatDigit),
  //             str = num.toString();
  //           let rgx = /(\d+)(\d{3})/;
  //           while (rgx.test(str)) {
  //             str = str.replace(rgx, '$1' + ' ' + '$2');
  //           }
  //           return str;
  //         });
  //       jQuery('.order-summary > .order-summary-footer span').text(function () {
  //         let num = total.toFixed(config.floatDigit),
  //           str = num.toString();
  //         let rgx = /(\d+)(\d{3})/;
  //         while (rgx.test(str)) {
  //           str = str.replace(rgx, '$1' + ' ' + '$2');
  //         }
  //         return str;
  //       });
  //     },
  //
  //     remove : function ( id ){
  //       let orderList = ($.cookie('orderList') != undefined) ? JSON.parse($.cookie('orderList')) : [];
  //
  //       if (orderList.length == 0) return;
  //
  //       orderList = jQuery.grep(orderList, function(item,index){
  //         return item.id != id;
  //       });
  //
  //       $.cookie('orderList', JSON.stringify(orderList), { path: '/' });
  //
  //       controllers.refresh(orderList);
  //     }
  //
  //   };
  //
  // const basket = {
  //
  //   init: function ( options ){
  //
  //     config = $.extend({
  //       cart : '.quick-cart',
  //       floatDigit: 0
  //     }, options);
  //
  //    },
  //
  //    add: function ( product ){
  //
  //     let orderList = ($.cookie('basket') !== undefined) ? JSON.parse($.cookie('basket')) : [],
  //       found = false;
  //
  //     $.each(orderList, function(i, data){
  //
  //       if (data.id == product.id) {
  //
  //         found = true;
  //         orderList[i].count = parseInt(data.count) + product.count;
  //         orderList[i].cost = parseInt(data.cost) + (product.cost * product.count);
  //       }
  //
  //       return !found;
  //     });
  //
  //       if (!found) orderList.push(product);
  //
  //       $.cookie('orderList', JSON.stringify(orderList), { path: '/' });
  //
  //       controllers.refresh(orderList, config.animate);
  //
  //       let $modal = jQuery('#cart-modal');
  //
  //       if ($modal.length > 0){
  //         $modal.find('.modal-image').append('<img src="'+product.image+'" class="img-responsive">');
  //         $modal.find('.modal-product').append(product.name);
  //       }
  //
  //       $.magnificPopup.open({
  //         items: {
  //           src: '#cart-modal'
  //         },
  //         type: 'inline'
  //       });
  //
  //     },
  //
  //     remove: function (id) {
  //       let orderList = ($.cookie('orderList') != undefined) ? JSON.parse($.cookie('orderList')) : [],
  //         found = false;
  //
  //       jQuery.each(orderList, function(i, data){
  //
  //         if (data.id == id) {
  //           orderList.splice(i, 1);
  //
  //         }
  //         return !found;
  //       });
  //
  //       $.cookie('orderList', JSON.stringify(orderList), { path: '/' });
  //
  //       controllers.refresh(orderList, config.animate);
  //     },
  //
  //     minus: function (product) {
  //       let orderList = ($.cookie('orderList') != undefined) ? JSON.parse($.cookie('orderList')) : [],
  //         found = false;
  //
  //       jQuery.each(orderList, function(i, data){
  //
  //         if (data.id == product.id) {
  //           found = true;
  //           orderList[i].count = parseInt(data.count) - 1;
  //           orderList[i].cost = parseInt(data.cost) - product.price;
  //         }
  //         return !found;
  //       });
  //
  //       $.cookie('orderList', JSON.stringify(orderList), { path: '/' });
  //
  //       controllers.refresh(orderList, config.animate);
  //     },
  //
  //     plus: function (product) {
  //
  //       let orderList = ($.cookie('orderList') != undefined) ? JSON.parse($.cookie('orderList')) : [],
  //         found = false;
  //
  //       jQuery.each(orderList, function(i, data){
  //
  //         if (data.id == product.id) {
  //           found = true;
  //           orderList[i].count = parseInt(data.count) + 1;
  //           orderList[i].cost = parseInt(data.cost) + product.price;
  //
  //         }
  //         return !found;
  //       });
  //
  //       $.cookie('orderList', JSON.stringify(orderList), { path: '/' });
  //
  //       controllers.refresh(orderList, config.animate);
  //     }
  //
  //   };

  const Basket = {

    add: function( params ) {

      let basketList = ($.cookie('basket') !== undefined) ? JSON.parse($.cookie('basket')) : [],
        found = false;

      $.each(basketList, function( i, data ) {

        if (data.id === params.id) {
          found = true;
          M.toast({html: 'Товар уже добавлен в корзину!'});
        }

        return !found;
      });

      if (!found) {
        basketList.push(params);
        $.cookie('basket', JSON.stringify(basketList), { path: '/' });

        this.controllers.refresh(basketList);
      }
    },

    controllers: {

      refresh: function(list) {
        let total = 0;

        let $cart = $('.quick-cart'),
          $badge = $cart.find('.quick-cart__counter-badge'),
          $cost = $cart.find('.quick-cart__counter-cost > em');

        if (list.length > 0) {

          $.each(list, function(i, data) {
            total += data.price;
          });

          $badge.html(total);
          $cost.html(number_formmat(total))

          $cart.removeClass('quick-cart--empty');

          M.toast({html: 'Товар добавлен в корзину.'})
        } else {

          $cart.addClass('quick-cart--empty');
          $badge.html(0);
          $cost.html(0);
        }

        $badge.text(list.length);
      },
    },

  };

  let $orderBtn = $('.product__order-btn');

  if ($orderBtn.length > 0) {

    $orderBtn.on('click', function(e) {
      e.preventDefault();

      let $this = $(this),
        data = {
          'id': $this.data('id'),
          'price': $this.data('price'),
        };

      Basket.add(data);
    });

  }

});

function getQueryUrl(str)
{
  let search = (str) ? '?' + str : '';
  return location.origin + location.pathname + search;
}

function number_formmat (number) {
  let num = number.toFixed(0),
    str = num.toString();
  let rgx = /(\d+)(\d{3})/;

  while (rgx.test(str)) {
    str = str.replace(rgx, '$1' + ' ' + '$2');
  }

  return str;
}