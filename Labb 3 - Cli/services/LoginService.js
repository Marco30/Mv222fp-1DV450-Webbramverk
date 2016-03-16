angular
  .module("clientApp")
  .service('LoginService', LoginService);

LoginService.$inject = ['$http', '$q', '$rootScope'];

function LoginService ($http, $q, $rootScope) 
{
  
 
  this.loginUser = function (email, password) 
  {
    var request = {
      url: "https://labb2-marco30.c9users.io/login",
      method: "POST",
      headers: {
        "ApiKey" : "8be9c45b4f085229c48eb4f8d6a7153c",
        "Accept" : "application/json",
      },
      data: {
        "password" : password,
        "email" : email
      }
    }
    
    return $http(request)
      .success(function(data) 
      {
        alert(JSON.stringify(data));
      $rootScope.token = data.auth_token;
      $rootScope.user_id = data.user_id;
    });
  }

}

