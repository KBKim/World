/**
 * @author java
 */

app.config(function($routeProvider) {
		console.log("/delete config...");
		
		$routeProvider.when("/delete", {       //매핑
			templateUrl: "delete.jsp",
			controller: "deleteController"
		});
		
	});

app.controller('deleteController', function($scope, $http, URL) { 		
        console.log("deleteController...");	
        console.log("URL.DELETE_ITEM_DELETE_BASE = " + URL.DELETE_ITEM_DELETE_BASE);
    
		$scope.$parent.title = "Delete City View"; 
		
		
		
	});


