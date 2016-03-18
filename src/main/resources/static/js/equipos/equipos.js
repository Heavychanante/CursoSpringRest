'use strict';

angular.module('cursoSpringRestApp')
  .config(function ($stateProvider) {
    $stateProvider
      .state('equipos', {
        url: '/equipos',
        templateUrl: 'js/equipos/equipos.html',
        controller: 'EquiposCtrl'
      });
  });