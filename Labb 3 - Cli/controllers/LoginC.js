angular
  .module("clientApp")
  .controller("LoginController", LoginController);

LoginController.$inject = ['$http', '$rootScope', '$location', 'LoginService'];

function LoginController($http, $rootScope, $location, loginService) 
{
  
  var vm = this;
   // loggin, skickar eamil och lösen till api
  vm.login = function ()
  {
    var loginPromise = loginService.loginUser(vm.email, vm.password);
    
    loginPromise.then(function(data)
    {
      $rootScope.isLoggedIn = true;
      $location.path('/myplaces');
    }).catch(function(data)
    {
      vm.message = "Wrong username or password";
      $rootScope.isLoggedIn = false;
    })
  }
}