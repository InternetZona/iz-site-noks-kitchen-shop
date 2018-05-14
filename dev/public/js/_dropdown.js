(function() {

  const elems = document.querySelectorAll('.dropdown-trigger');

  if (null !== elems) {
    [].forEach.call(elems, (elem) => {

      let options = {
        alignment: elem.dataSet.ddAlignment || 'left',
        autoTrigger: elem.dataSet.ddAutoTrigger || true,
        constrainWidth: elem.dataSet.ddConstrainWidth || true,
        container: elem.dataSet.ddContainer || null,
        coverTrigger: elem.dataSet.ddCoverTrigger || true,
        closeOnClick: elem.dataSet.ddCloseOnClick || true,
        hover: elem.dataSet.ddHover || false,
        inDuration: elem.dataSet.ddInDuration || 150,
        outDuration: elem.dataSet.ddOutDuration || 250,
      };

      M.Dropdown.init(elem, options);
    });
  }

})();