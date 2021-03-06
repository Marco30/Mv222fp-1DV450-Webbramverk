angular
  .module("clientApp")
  .controller("UserDetailController", UserDetailController);

UserDetailController.$inject = ['$routeParams', 'UserService'];

function UserDetailController($routeParams, userService) 
{

  var vm = this;
  
  //hämtar data för en användare 
  var userPromise = userService.getUser($routeParams.id);
  userPromise.then(function(data)
  {
    vm.username = data.username;
    vm.places = data.places;
  }).catch(function(error)
  {
    vm.message = error;
  })
}