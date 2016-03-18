angular
  .module("clientApp")
  .controller("MapController", MapController);
              
MapController.$inject = ['$scope', 'PlaceService'];

function MapController ($scope, placeService)
{
  
  //funktionen hämtar plats data från api för att visas på kartan
  var placePromise = placeService.get();
  
  placePromise.then(function(data)
    {
    $scope.placeList = data;
  })
    .catch(function(error) 
    {
    console.log(error);
  });
}