angular
  .module("clientApp")
  .factory('PlaceService', PlaceService);

  PlaceService.$inject = ['APIService', '$q', '$rootScope'];
  
  function PlaceService(Resource, $q, $rootScope) 
  {
    
    var Place = Resource('places');
    
    return {
      
      //hämtar alla paltser
      get:function() 
      {
        
        var deferred = $q.defer();
        
        Place.getCollection().then(function(data)
        {
          deferred.resolve(data);
        });
        return deferred.promise;
      },
      
          //Skapar en plats
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
      
      //hämtar en vald plats
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
      
           //Uppdaterar en vald plats
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
      
      //tar bort en plats
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