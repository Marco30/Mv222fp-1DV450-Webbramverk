angular
  .module("clientApp")
  .controller("SearchController", SearchController);

SearchController.$inject = ['$http'];

function SearchController($http) 
{
  
  var vm = this;
  
  //Gör en sökning i apien
  vm.search = function () 
  {
    var url = "https://labb2-marco30.c9users.io/places"
    var config = {
      headers: {
        "ApiKey" : "8be9c45b4f085229c48eb4f8d6a7153c",
        "Accept" : "application/json"
      },
      params: {
        "address" : vm.searchword
      }
    }
    
    var promise = $http.get(url, config);
    promise.success(function(data, status, headers, config) 
    {
      vm.placeList = data;
    });
    promise.error(function(data, status, headers, config) 
    {
      vm.message = "Something went wrong, try again";
    });
  };
}