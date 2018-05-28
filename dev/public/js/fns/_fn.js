const jQuery = require('jquery');

jQuery(function($) {

  let $filterDesktop = $('#form-filter');

  if ($filterDesktop.length > 0) {

    $filterDesktop.on('change', function() {
      let $this = $(this),
        params = [];

      $.each($this.find('select'), function() {
        let $this = $(this),
            value = $this.prop('value') || 0;

        if (value) {
          params.push({
            key: $this.attr('name'),
            value: value,
          });
        }
      });

      let query = params.map(function(elem){
        return encodeURIComponent(elem.key) + '=' + elem.value;
      }).join('&');

      setFilterUrl(query);
    });
  }

});

function setFilterUrl(str) {
  let search = (str) ? '?' + str : '';

  if (search !== location.search) {
    location.href = location.origin + location.pathname + search;
  }
}