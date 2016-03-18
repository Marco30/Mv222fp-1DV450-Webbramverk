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
    
   
   //get funktion som hämtar enskild API data
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
   
    //get funktion som hämtar all begärd data
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
 
   
   //post funktnion som addar datat till api
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
   
   //delit funktnion som tar bort valda data
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
   
   
     //put funktnion som updaterar vis data på apien
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