(() => {
    function getResults() {
      console.log('hit get results');
      const dataContainer = document.querySelector('.products');
      fetch('./product/read.php')
      .then(res => res.json())
      .then(data => {
        console.log(data);
        data.forEach((item, index) => {
          let colorChips = document.createElement('ol');
          //create the color chips
          item.colors.forEach(color => {
            colorChips.innerHTML += `<li>
                                        <span>${color.color}</span>
                                        <span class="chip" style="background-color: ${color.color}"></span>
                                     </li>`;
          });
          // create the wrapper
          let newItem = document.createElement('li');
          newItem.innerHTML = `<span>${item.product_name}</span>
                               <span>${item.product_description}</span>
                               <span>${item.product_price}</span>`;
          // add it to the UL
          newItem.appendChild(colorChips);
          dataContainer.appendChild(newItem);
        });
      })
      .catch(function(error) {
        console.log(error);
      });
    }
    // fire off the fetch call
    getResults();
  })();