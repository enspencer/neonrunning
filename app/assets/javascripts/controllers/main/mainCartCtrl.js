var CartCtrl = function($scope, $http, $location){                                             
  $scope.getCartLineItems = function() {
    $http.get('/cart').
      success(function(data){
        $scope.lineItems = data;
        console.log("Got Cart line items");
      }).
      error(function(data){
        console.error("Error: getting cart line items");
      })
  }

 $scope.addProductToCart = function(productId){
  $http.post('/storefront/'+ productId + '/add_to_cart', productId).
    success(function(data){
      console.log("Successfully added product to cart");
    }).
    error(function(){
      console.error("Failed to add product to cart");
    });
    console.log("Added a product: " + productId + " to cart");
    $location.url('/cart');
  };

};