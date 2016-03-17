angular
  .module("clientApp")
  .factory('PlaceService', PlaceService);

  PlaceService.$inject = ['APIService', '$q', '$rootScope'];
  
  function PlaceService(Resource, $q, $rootScope) 
  {
    
    var Place = Resource('places');
    
    return {

      get:function() 
      {
        
        var deferred = $q.defer();
        
        Place.getCollection().then(function(data)
        {
          deferred.resolve(data);
        });
        return deferred.promise;
      },
      
      createPlace:function(address, tagArray) 
      {
        
        var deferred = $q.defer();
        var promise;
        var obj = {'instanceName' : 'places'};
        var attr = { "place":
                    {
                      "address": address,
                      "tag_ids": tagArray 
                    }
                   }
        
        promise = Place.create(obj, attr);
        
        promise.success(function(data)
        {
          deferred.resolve(data);
        }).catch(function(){
          deferred.reject("Something went wrong, try again");
        });

        return deferred.promise;
      },
      
      //Hämtar en enskild turistattraktion
      getPlace:function(id) 
      {
        
        var deferred = $q.defer();
        var promise;
        var obj = {'instanceName' : 'places', 'id' : id};
        
        promise = Place.getSingle(obj);
        
        promise.success(function(data)
        {
          deferred.resolve(data);
        }).catch(function()
        {
          deferred.reject("Something went wrong, try again");
        });

        return deferred.promise;
      },
      
      updatePlace:function(id, address, tagArray)
      {
        
        var deferred = $q.defer();
        var promise;
        var obj = {'instanceName' : 'places', 'id' : id};
        var attr = { "place":
                     {
                       "address": address,
                       "tag_ids": tagArray
                     }
                    }
        
        promise = Place.update(obj, attr);
        
        promise.success(function(data)
        {
          deferred.resolve(data);
        }).catch(function(){
          deferred.reject("Something went wrong, try again");
        });

        return deferred.promise;
      },

      deletePlace:function(id){
        
        var deferred = $q.defer();
        var promise;
        var obj = {'instanceName' : 'places', 'id' : id};
        
        promise = Place.delete(obj);
        
        promise.success(function(data)
        {
          deferred.resolve(data);
        }).catch(function(){
          deferred.reject("Something went wrong, try again");
        });

        return deferred.promise;
      }
      
    };
  }