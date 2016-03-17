angular
  .module("clientApp")
  .factory('UserService', UserService); 

UserService.$inject = ['APIService', '$q', '$rootScope'];

function UserService(Resource, $q, $rootScope) 
{
  
  var User = Resource('users');
  
  return {
    
    getUser:function(id) 
    {
      
      var deferred = $q.defer();
      var promise;
      var obj = {'instanceName' : 'users', 'id' : id};
      
      promise = User.getSingle(obj);
      
      promise.success(function(data)
      {
        //alert(JSON.stringify(data));
        deferred.resolve(data);
      }).catch(function()
      {
        deferred.reject("Something went wrong, try again");
      });
      
      return deferred.promise;
    },
    
    get:function() 
    {

      var deferred = $q.defer();
      
        User.getCollection().then(function(data)
        {
  
          deferred.resolve(data);
        });

      return deferred.promise;
    }
    
  };
}