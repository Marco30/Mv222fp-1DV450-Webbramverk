{"filter":false,"title":"CRUDC.js","tooltip":"/controllers/CRUDC.js","undoManager":{"mark":1,"position":1,"stack":[[{"start":{"row":30,"column":0},"end":{"row":56,"column":3},"action":"remove","lines":["  if($rootScope.isLoggedIn)","  {","    vm.deletePlace = function(id) ","    {","      var deletePromise = placeService.deletePlace(id);","      deletePromise.then(function(data)","      {","        vm.message = \"The place has been deleted.\";","        var userPromise = userService.getUser($rootScope.user_id);","        userPromise.then(function(data)","        {","          vm.username = data.username;","          vm.places = data.places;","        }).catch(function(error)","        {","          vm.message = error;","        })","      }).catch(function(error)","      {","        vm.message = error;","      })","    }","  } ","  else ","  {","    vm.message = \"You are not logged in.\";","  }"],"id":2}],[{"start":{"row":29,"column":0},"end":{"row":30,"column":0},"action":"remove","lines":["",""],"id":3}]]},"ace":{"folds":[],"scrolltop":168.00001001358032,"scrollleft":0,"selection":{"start":{"row":19,"column":19},"end":{"row":19,"column":19},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":7,"state":"start","mode":"ace/mode/javascript"}},"timestamp":1458157292701,"hash":"cf0598d782dbfd11e979cdca48e38861cf457a3e"}