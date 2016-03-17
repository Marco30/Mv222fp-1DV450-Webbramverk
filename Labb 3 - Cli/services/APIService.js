angular
    .module("clientApp")
    .factory('APIService', APIService);

APIService.$inject = ['$http', '$rootScope', 'API'];

function APIService($http, $rootScope, API) 
{

 return function (collectionName) 
 {
  
    var Resource = function(data) 
    {
      angular.extend(this, data);
    }
    
   Resource.getSingle = function(obj) 
   {
     var url;
     url = API.url +obj.instanceName +"/" + obj.id;
     
     var req = {
       method: 'GET',
       url: url,
       headers: {
         'Accept': API.format,
         'ApiKey': API.key
       }
     };
     
     return $http(req).success(function(response) 
     {
       return response;
     });
   };

    Resource.getCollection = function() 
    {
      
      var req = {
        method: 'GET',
        url: API.url +collectionName,
        headers: {
          'Accept': API.format,
          'ApiKey': API.key,
        }
      };
      
      return $http(req).then(function(response) 
      {
        var result = [];
        
        angular.forEach(response.data, function(value, key) 
        {
          result[key] = new Resource(value); 
        });
        
        return result;
      });
    };
 
   
   //Skapar en resurs
   Resource.create = function(obj, attr) 
   {
     var url;
     url = API.url +obj.instanceName;
     
     var req = {
       method: 'POST',
       url: url,
       headers: {
         'Accept': API.format,
         'ApiKey': API.key,
         'Authorization' : 'Bearer ' + $rootScope.token
       },
       data : attr
     };
     
     return $http(req).success(function(response)
     {
       return response;
     });
   };
   
   //Tar bort en resurs
   Resource.delete = function(obj) 
   {
     var url;
     url = API.url +obj.instanceName +"/" + obj.id;
     
     var req = {
       method: 'DELETE',
       url: url,
       headers: {
         'Accept': API.format,
         'ApiKey': API.key,
         'Authorization': 'Bearer ' + $rootScope.token
       }
     };
     
     return $http(req).success(function(response)
     {
       return response;
     });
   };
   

   Resource.update = function(obj, attr) 
   {
     var url;
     url = API.url +obj.instanceName +"/" + obj.id;
     
     var req = {
       method: 'PUT',
       url: url,
       headers: {
         'Accept': API.format,
         'ApiKey': API.key,
         'Authorization': 'Bearer ' + $rootScope.token
       },
       data: attr
     };
     
     return $http(req).success(function(response) 
     {
       return response;
     });
   };
   
   return Resource;
 }
}