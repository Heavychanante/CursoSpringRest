'use strict';

angular.module('cursoSpringRestApp', ['ui.router', 'ui.bootstrap'])
	.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
		$urlRouterProvider.otherwise('/');
	    $locationProvider.html5Mode(true);
	});