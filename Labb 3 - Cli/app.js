angular
  .module('clientApp', ['ngRoute', 'ngMap', 'tagDirective'])
  .controller('appCtrl', ['$rootScope', '$location', function ($rootScope, $location) {
    var vm = this;
    vm.isLoggedIn = function () {
      return $rootScope.isLoggedIn;
    }
    
    vm.logout = function () {
      $rootScope.token = null;
      $rootScope.user_id = null;
      $rootScope.isLoggedIn = false;
      $location.path('/');
  }
  }])
  .config(['$routeProvider', '$locationProvider',
    function($routeProvider, $locationProvider)
    {
      $routeProvider.
        when('/', 
        {
        templateUrl: 'partials/login.html',
        controller: 'LoginController',
        controllerAs: 'loginctrl'
        }).
        when('/places', 
        {
          templateUrl: 'partials/place/list-place.html',
          controller: 'PlaceListController',
          controllerAs: 'places'
        }).
        when('/places/:id', 
        {
          templateUrl: 'partials/place/detail-place..html',
          controller: 'PlaceDetailController',
          controllerAs: 'place'
        }).
        when('/places/:id/edit', 
        {
          templateUrl: 'partials/place/edit-place.html',
          controller: 'PlaceEditController',
          controllerAs: 'edit'
        }).
        when('/new', 
        {
          templateUrl: 'partials/place/new-place.html',
          controller: 'PlaceCreateController',
          controllerAs: 'create'
        }).
        when('/users', 
        {
          templateUrl: 'partials/user/list-user.html',
          controller: 'UserListController',
          controllerAs: 'users'
        }).
        when('/users/:id', 
        {
          templateUrl: 'partials/user/detail-user.html',
          controller: 'UserDetailController',
          controllerAs: 'user'
        }).
       when('/tags', 
       {
          templateUrl: 'partials/tag/list-tag.html',
        }).
        when('/tags/:id', 
        {
          templateUrl: 'partials/tag/detail-tag.html',
          controller: 'TagDetailController',
          controllerAs: 'tag'
        }).
        when('/map', 
        {
         templateUrl: 'partials/map.html',
          controller: 'MapController',
          controllerAs: 'mapctrl'
        }).
        when('/search', 
        {
         templateUrl: 'partials/search.html',
          controller: 'SearchController',
          controllerAs: 'searchctrl'
        }).
       when('/myplaces', 
       {
         templateUrl: 'partials/user/list-user-place.html',
          controller: 'CRUDController',
          controllerAs: 'crud',
          requireLogin: true
        }).
        otherwise({
          redirectTo: '/'
        });
      
      $locationProvider.html5Mode(true);
    }])
    .constant('API', 
    { 
      'key': "8be9c45b4f085229c48eb4f8d6a7153c", 
      'url': "https://labb2-marco30.c9users.io/",
      'format': 'application/json'
    });
