angular
  .module("clientApp")
  .factory('TagService', TagService);

TagService.$inject = ['APIService', '$q', '$rootScope'];

function TagService(Resource, $q, $rootScope) 
{
  
  var Tag = Resource('tags');
  
  return {
    
       //hämtar en vald tagg
    getTag:function(id) {
      
      var deferred = $q.defer();
      var promise;
      var obj = {'instanceName' : 'tags', 'id' : id};
      
      promise = Tag.getSingle(obj);
      
      promise.success(function(data)
      {
        //alert(JSON.stringify(data));
        /*alert(data.places[1].address );*/
        deferred.resolve(data);
      }).catch(function()
      {
        deferred.reject("Something went wrong, try again");
      });
      return deferred.promise;
    },
    
    //hämtar alla taggar
    get:function()
    {
      
      var deferred = $q.defer();
      

        Tag.getCollection().then(function(data)
        {

          deferred.resolve(data);
        });

      return deferred.promise;
    }
    
  };
}