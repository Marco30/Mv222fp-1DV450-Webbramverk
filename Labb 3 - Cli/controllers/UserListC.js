angular
  .module("clientApp")
  .controller("UserListController", UserListController);

UserListController.$inject = ['UserService'];

function UserListController(userService)
{
  
  var vm = this;
  
  //hämtar alla användare från api 
  var userPromise = userService.get();
  userPromise
    .then(function(data)
    {
    vm.userList = data;
  })
    .catch(function(error) 
    {
    vm.message = error;
  });
}