angular
  .module("clientApp")
  .controller("TagDetailController", TagDetailController);

TagDetailController.$inject = ['$routeParams', 'TagService'];

function TagDetailController($routeParams, tagService) 
{

  var vm = this;
  
  //hemätar tag data för en tag man valt 
  var tagPromise = tagService.getTag($routeParams.id);
  tagPromise.then(function(data)
  {
    vm.name = data.name;
    vm.places = data.places;
    
  }).catch(function(error)
  {
    vm.message = error;
  })
}