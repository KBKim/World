<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  session="false" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html lang="ko" data-ng-app="worldApp">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="UTF-8">
<%@ include file="/common.jspf" %>
<title>xxx.jsp</title>

<script type="text/javascript">
	var deps = ['ngRoute',
	                   'ngAnimate', 
	                   'ngTouch', 
	                   'angular-loading-bar'
	                   ];
	var app = angular.module("worldApp", deps);

	app.controller("mainController", function($scope, $http) {
		console.log("mainController ... ");
		
		$scope.title = "xxx";
		
	});

</script>
</head>
<body data-ng-controller="mainController" class="container">  <!--반응형이되려면container필수-->

<h1><a href="#" class="btn btn-primary">{{title}}</a></h1>
<button class="btn btn-success">xxx</button>

</body>
</html>






