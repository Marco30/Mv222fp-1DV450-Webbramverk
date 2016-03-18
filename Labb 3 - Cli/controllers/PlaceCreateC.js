angular
  .module("clientApp")
  .controller("PlaceCreateController", PlaceCreateController);

PlaceCreateController.$inject = ['$routeParams', '$rootScope', 'PlaceService', 'TagService', 'filterFilter'];

function PlaceCreateController($routeParams, $rootScope, placeService, tagService, filterFilter) 
{
   
  var vm = this;
  vm.isLoggedIn = $rootScope.isLoggedIn;
  
  //kontrolerar om man är inloggad 
  if ($rootScope.isLoggedIn) 
  {
 
    //här skapar vi en ny plats 
    vm.createPlace = function() 
    {
      
      var log = vm.selectedTags();// checkbox
      var tagArray = [];
      
      //lägger tagari en array
      angular.forEach(log, function(value, key) 
      {
        this.push(value.id);
      }, tagArray);
      

      
      //här skapar vi en plats 
      var createPromise = placeService.createPlace(vm.address, tagArray);
      createPromise.then(function(data)
      {
        vm.message = "The place has been created";
      }).catch(function(error)
      {
        vm.message = error;
      })
    };
    
              //hämtar tagar 
       var tagPromise = tagService.get();
    
    tagPromise.then(function(data)
      {
      vm.tagList = data;
    })
      .catch(function(error) 
      {
      vm.message = error;
    });
    
    //tagar i checkbox
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