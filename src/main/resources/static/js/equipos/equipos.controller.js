'use strict';

angular.module('cursoSpringRestApp')
	.controller('EquiposCtrl', function($scope, $http) {
		$scope.equipos = [];

		// Se recuperan los equipos desde el servicio Rest desplegado con Spring Rest Repositories
		$http({
			method : 'GET',
			url : 'http://localhost:8080/api/equipos'
		}).then(function(response) {
			$scope.equipos = response.data._embedded.equipos;
		}, function(error) {
			console.error("Error recuperando los equipos : " + error);
		});
		
	});