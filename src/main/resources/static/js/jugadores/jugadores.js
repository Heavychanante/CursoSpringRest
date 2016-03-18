'use strict';

angular.module('cursoSpringRestApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('jugadores', {
        url: '/jugadores',
        params: {
            url: {
              value: 'http://localhost:8080/api/jugadores'
            }
         },
        templateUrl: 'js/jugadores/jugadores.html',
        controller: 'JugadoresCtrl'
      });
  });