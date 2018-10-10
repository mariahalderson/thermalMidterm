(() => {
    function getResults() {
      console.log('hit get results');
      const productName = document.querySelector('.product-name'),
            tagLine = document.querySelector('.tag-line'),
            featureList = document.querySelector('.featuresList');

      fetch('./product/read.php')
      .then(res => res.json())
      .then(data => {
        console.log(data);

        productName.innerHTML = data[0].product_name;
        tagLine.innerHTML = data[0].tagline;


        data[0].features.forEach(feature => {
            featureList.innerHTML += `<li><p class="sub-title">${feature.feature_name}</p>
                                        <p>${feature.feature_desc}</p></li>`;               
          });

          

      })
      
      .catch(function(error) {
        console.log(error);
      });
    }
    // fire off the fetch call
    getResults();
  })();