angular
  .module("clientApp")
  .controller("CRUDController", CRUDController);

CRUDController.$inject = ['$http', '$rootScope', '$routeParams', 'UserService', 'PlaceService'];
  
function CRUDController($http, $rootScope, $routeParams, userService, placeService) 
{
  
  var vm = this;
  vm.isLoggedIn = $rootScope.isLoggedIn;
  
  //if statt kontroll om man är inloggad och hämtar anändar dat om amn är inloggad 
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
    vm.message = "You'r not logged in.";
  }
  
  //if satsen kontrollerar om man är in loggad, är man det så kan man ta bort platser man skappat
  if($rootScope.isLoggedIn)
  {
    vm.deletePlace = function(id) 
    {
      var deletePromise = placeService.deletePlace(id);
      deletePromise.then(function(data)
      {
        vm.message = "The place has been deleted.";
        var userPromise = userService.getUser($rootScope.user_id);
        userPromise.then(function(data)
        {
          vm.username = data.username;
          vm.places = data.places;
        }).catch(function(error)
        {
          vm.message = error;
        })
      }).catch(function(error)
      {
        vm.message = error;
      })
    }
  } 
  else 
  {
    vm.message = "You'r not logged in.";
  }
  
}