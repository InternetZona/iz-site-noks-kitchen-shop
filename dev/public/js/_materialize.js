require('materialize-css');
const Plyr = require('plyr');

(function() {

  let config = {};

  Array.from(document.querySelectorAll('.modal')).map((elem) => {

    let config = {};

    switch (elem.id) {
      case 'modal-testimonial-video':
        let player = new Plyr('#testimonial-player', {
          autoplay: true,
          settings: [],
        });

        config = {
          onOpenStart: function() {
            let trigger = this._openingTrigger;
            player.source = {
              type: 'video',
              sources: [
                {
                  src: trigger.dataset.testimonialVideo,
                  provider: 'youtube'
                }
              ]
            };
          },
          onCloseStart: function() {
            player.stop();
          }
        };
        break;
      case 'modal-testimonial-text':
        config = {
          onOpenStart: function() {
            let trigger = this._openingTrigger,
              content = document.createElement('p'),
              avatar = trigger.parentElement.querySelector('.collection').cloneNode(true);

            content.innerText = testimonialsList[trigger.dataset.testimonialId].text;

            this.el.querySelector('.modal-content .testimonial-text').appendChild(content);
            this.el.querySelector('.modal-content .testimonial-avatar').appendChild(avatar);
          },
          onCloseEnd: function() {
            this.el.querySelector('.modal-content .testimonial-text').innerHTML = "";
            this.el.querySelector('.modal-content .testimonial-avatar').innerHTML = "";
          }
        };
        break;
      default:
    }

    M.Modal.init(elem, config);

  });

  Array.from(document.querySelectorAll('.tabs')).map((elem) => {
    let options = {};

    M.Tabs.init(elem, options);
  });

  let sidenav = document.querySelectorAll('.sidenav');

  if (sidenav !== null) {
    M.Sidenav.init(sidenav, {});
  }

})();