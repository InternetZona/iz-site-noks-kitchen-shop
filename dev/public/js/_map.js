(function() {
  let container = document.getElementById('map');

  if (container != null) {
    let script = document.createElement('script');

    script.src = "https://api-maps.yandex.ru/2.1/?lang=ru_RU";
    script.async = true;
    
    script.onload = function() {
      
      ymaps.ready(function(){
        
        let map = new ymaps.Map("map", {
            center: [55.660546, 37.246317],
            zoom: 17,
            controls: [],
          }),
          
          placemark = new ymaps.Placemark(map.getCenter(), {}, {
            // iconLayout: 'default#image',
            // iconImageHref: 'assets/components/modxsite/templates/default/images/marker.png',
            // iconImageSize: [48, 54],
            // iconImageOffset: [-5, -38]
          });

        map.behaviors.disable('scrollZoom');
        map.behaviors.disable('multiTouch');

        map.geoObjects
          .add(placemark);
      });
    }

    document.body.appendChild(script);
  }
})();