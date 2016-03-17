angular
.module('tagDirective', []) 
.directive('tagdirective', function()
{  
  return {
    restrict: 'E',  
    replace: true,  
    scope: {
      dirTagLinks: '@'      
    },
    template: htmlTemplate,

    link: function(scope, iElement, iAttrs, ctrl) 
    {
      scope.getTags() 
        .success(function() {   }) 
        .error(function() { });  
    },                                                     
    controller: ['$scope', '$http', function($scope, $http) 
    { 
                                                             
      $scope.getTags = function() 
      {
        var req = {
          method: 'GET',
          url: "https://labb2-marco30.c9users.io/tags",
          headers: {
            'Accept': 'application/json',
            'ApiKey': "8be9c45b4f085229c48eb4f8d6a7153c"
          }
        };
        
        return $http(req).success(function(tags) 
        { 
         $scope.dirTagLinks = tags; 
        }).error(function(error) 
        {
          console.log(error);
        });
      }
    }]
  }
}
);

var htmlTemplate  =  '<tr data-ng-repeat="tag in dirTagLinks">';
htmlTemplate      += '<td>{{tag.name | uppercase }}</td>';          
htmlTemplate      += '<td><a data-ng-href="/tags/{{tag.id}}">More info</a></td>';
htmlTemplate      += '</tr>';