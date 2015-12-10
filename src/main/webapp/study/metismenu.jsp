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
<title>metismenu.jsp</title>

<script type="text/javascript">
	var deps = ['ngRoute',
	                   'ngAnimate', 
	                   'ngTouch', 
	                   'angular-loading-bar'
	                   ];
	var app = angular.module("worldApp", deps);

	app.controller("mainController", function($scope, $http) {
		console.log("mainController ... ");
		
		$scope.title = "Metis Menu Example";
		
		$('#menu').metisMenu({ 
			toggle : false
		});
	});

</script>

<style type="text/css">
		.font-size {
				font-size: 10px; 
				color: red;
		}
		@media (min-width: 768px) {
			 .font-size {
			 	font-size: 20px;
			 	color: green;
			 }		
		}
		
</style>


</head>
<body data-ng-controller="mainController" class="container">  <!--반응형이되려면container필수-->

<h1><a href="" class="btn btn-primary font-size">{{title}}</a></h1>

<ul class="metismenu" id="menu">

  <li class="active">
    <a href="">Menu 1</a>
    <ul class="fa-ul">
    		<li><i class="fa-li fa fa-camera-retro fa-fw"></i>City1</li>
    		<li><i class="fa-li fa fa-check-square"></i>List icons</li>
    		<i class="fa fa-home fa-fw"></i>&nbsp; Home<br>
    		<i class="fa-cog fa-fw"></i>&nbsp; Settings
    </ul>
  </li>
  <li>
    <a href="" >Menu 2</a>
    <ul >
    		<li><i class="fa fa-trash-o fa-lg" style="color: red"></i> Delete</a></li>
    		<li>Country2</li>
    		<li>Country3</li>
    </ul>
  </li>
  </ul>

</body>
</html>






