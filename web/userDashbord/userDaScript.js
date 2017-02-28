var app = angular.module("UD", ['ngRoute'])
        .config(['$routeProvider', function ($routeProvider) {
                $routeProvider.
                        when('/table', {
                            templateUrl: 'userProduct.html',
                            controller: 'TableCtrl'
                        }).
                                when('/dashboard', {
                            templateUrl: 'editInfo.html',
                            controller: 'EditCtrl'
                        }).
                                when('/error', {
                            templateUrl: 'error.html',
                            controller: 'ErrorCtrl'
                        }).
                        otherwise({redirectTo: '/dashboard'});
            }])
        .controller('TableCtrl', ['$scope', '$http', function ($scope, $http) {
//                $scope.contacts=[];
                $http.get('http://localhost:8080/ComputerSolutions/rest/product').then(function (response) {
                    $scope.table = response.data;
                });
            }]);
                