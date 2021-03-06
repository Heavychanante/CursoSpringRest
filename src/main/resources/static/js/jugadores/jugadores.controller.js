'use strict';

angular.module('cursoSpringRestApp')
	.controller('JugadoresCtrl', function($scope, $http, $stateParams) {
		$scope.jugadores = [];
		var url = $stateParams.url || 'http://localhost:8080/api/jugadores';

		// Se recuperan los equipos desde el servicio Rest desplegado con Spring Rest Repositories
		$http({
			method : 'GET',
			url : url
		}).then(function(response) {
			$scope.jugadores = response.data._embedded.jugadores;
		}, function(error) {
			console.error("Error recuperando los jugadores : " + error);
		});
	});