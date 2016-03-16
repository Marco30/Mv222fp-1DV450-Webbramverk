angular
  .module("clientApp")
  .controller("CRUDController", CRUDController);

CRUDController.$inject = ['$http', '$rootScope', '$routeParams', 'UserService', 'PlaceService'];
  
function CRUDController($http, $rootScope, $routeParams, userService, placeService) 
{
  
  var vm = this;
  vm.isLoggedIn = $rootScope.isLoggedIn;

  if($rootScope.isLoggedIn)
  {
    var userPromise = userService.getUser($rootScope.user_id);
    
    userPromise.then(function(data)
    {
      vm.username = data.username;
      vm.places = data.places;
    }).catch(function(error)
    {
      vm.message = error;
    })
  } 
  else 
  {
    vm.message = "You are not logged in.";
  }

  
}