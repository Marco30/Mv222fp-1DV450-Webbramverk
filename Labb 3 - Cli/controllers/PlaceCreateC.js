angular
  .module("clientApp")
  .controller("PlaceCreateController", PlaceCreateController);

PlaceCreateController.$inject = ['$routeParams', '$rootScope', 'PlaceService', 'TagService', 'filterFilter'];

function PlaceCreateController($routeParams, $rootScope, placeService, tagService, filterFilter) 
{
   
  var vm = this;
  vm.isLoggedIn = $rootScope.isLoggedIn;

  if ($rootScope.isLoggedIn) 
  {

    vm.createPlace = function() 
    {
      var log = vm.selectedTags();
      var tagArray = [];
      

      angular.forEach(log, function(value, key) 
      {
        this.push(value.id);
      }, tagArray);
      

      var createPromise = placeService.createPlace(vm.address, tagArray);
      createPromise.then(function(data)
      {
        vm.message = "The place has been created";
      }).catch(function(error)
      {
        vm.message = error;
      })
    };
    
       var tagPromise = tagService.get();
    
    tagPromise.then(function(data)
      {
      vm.tagList = data;
    })
      .catch(function(error) 
      {
      vm.message = error;
    });
    

    vm.selection = [];
    vm.selectedTags = function selectedTags() 
    {
      return filterFilter(vm.tagList, { selected: true });
    };
    
  } 
  else
  {
    vm.message = "You'r not logged in.";
  }

}