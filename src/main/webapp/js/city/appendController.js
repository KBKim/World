/**
 * @author java
 */

app.config(function($routeProvider) {
		console.log("/append config...");
		
		$routeProvider.when("/append", {       //매핑
			templateUrl: "append.jsp",
			controller: "appendController"
		});
		
	});

app.controller('appendController', function($scope, $http, URL) { 		
        console.log("appendController...");	
        console.log("URL.POST_ITEM_APPEND = " + URL.POST_ITEM_APPEND);
    
		$scope.$parent.title = "Append City View"; 
		
		
		
	});


