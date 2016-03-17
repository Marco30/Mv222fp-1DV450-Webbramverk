angular
  .module("clientApp")
  .controller("PlaceListController", PlaceListController);

PlaceListController.$inject = ["PlaceService"];

function PlaceListController(placeService) 
{
 
  var vm = this;
  var placePromise = placeService.get();
  placePromise
    .then(function(data)
    {
    vm.placeList = data;
  })
    .catch(function(error) 
    {
    vm.message = error;
  });
}