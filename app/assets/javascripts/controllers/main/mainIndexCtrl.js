var IndexCtrl = function($scope, $location, $http, productData){
  $scope.data = productData;
  productData.loadProducts();

  $scope.viewProduct = function(productId){
    $location.url('/product/' + productId);
  }
};