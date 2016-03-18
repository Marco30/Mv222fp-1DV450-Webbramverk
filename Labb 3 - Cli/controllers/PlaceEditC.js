angular
  .module("clientApp")
  .controller("PlaceEditController", PlaceEditController);

PlaceEditController.$inject = ['$routeParams', '$rootScope', 'PlaceService', 'TagService', 'filterFilter'];

function PlaceEditController($routeParams, $rootScope, placeService, tagService, filterFilter) 
{
   
  var vm = this;
  vm.isLoggedIn = $rootScope.isLoggedIn;
  
 //kontrollerar om man är inloggad 
   if ($rootScope.isLoggedIn) 
   {
     
     
     //Uppdaterar plats man valt 
     vm.updatePlace = function() 
     {
       if (!vm.address)
       {
         vm.message = "Please enter an address";
       } 
       else 
       { 
       
         var log = vm.selectedTags();// checkbox
         var tagArray = [];
         
         //lägger tagari en array
         angular.forEach(log, function(value, key) 
         {
           this.push(value.id);
         }, tagArray);
         
         //Anropar PlaceService
         var updatePromise = placeService.updatePlace($routeParams.id, vm.address, tagArray);
         updatePromise.then(function(data)
         {
           vm.message = "The place has been updated";
         }).catch(function(error){
           vm.message = error;
         })
       }
     };
     
         var tagPromise = tagService.get();
     
         tagPromise
           .then(function(data)
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