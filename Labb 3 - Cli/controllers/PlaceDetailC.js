angular
  .module("clientApp")
  .controller("PlaceDetailController", PlaceDetailController);

PlaceDetailController.$inject = ['$routeParams', 'PlaceService'];

function PlaceDetailController($routeParams, placeService) 
{

  var vm = this;
  
  //hämtar en plats och ann dens data
  var placePromise = placeService.getPlace($routeParams.id);
  placePromise.then(function(data)
  {
    vm.address = data.address;
    vm.tags = data.tags;
  }).catch(function(error)
  {
    vm.message = error;
  })
}