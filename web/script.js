
var app = angular.module("computer", ['ngRoute'])

        .config(['$routeProvider', function ($routeProvider) {
                $routeProvider.
                        when('/home', {
                            templateUrl: 'main.html',
                            controller: 'MainCtrl'
                        }).
                        when('/about', {
                            templateUrl: 'about.html',
                            controller: 'MainCtrl'
                        }).
                        when('/service', {
                            templateUrl: 'services.html',
                            controller: 'serviceCtrl'
                        }).
                        when('/contact', {
                            templateUrl: 'contact.html',
                            controller: 'contactCtrl'
                        }).
                        when('/login', {
                            templateUrl: 'login.html',
                            controller: 'loginCtrl'
                        }).
                        when('/product', {
                            templateUrl: 'product.html',
                            controller: 'productCtrl'
                        }).
                        otherwise({redirectTo: '/home'});
            }])

//        .controller('loginCtrl', ['$scope', '$location', function ($scope, $location) {
//                $scope.submit = function () {
//                    var uname = $scope.username;
//                    var password = $scope.password;
//                    if ($scope.username == 'admin' && $scope.password == 'admin') {
//                        $location.path('/userDashbord');
//                    } else {
//                        alert('Wrong Stuff');
//                    }
//                };
//            }])
        .controller('MainCtrl', [function ($scope) {

            }])

        .controller('serviceCtrl', ['$scope', '$http', function ($scope, $http) {
//                $scope.services=[];
                $http.get('http://localhost:8080/ComputerSolutions/rest/services').then(function (response) {
                    $scope.services = response.data;
                });
            }])

        .controller('contactCtrl', ['$scope', '$http', function ($scope, $http) {
//                $scope.contacts=[];
                $http.get('http://localhost:8080/ComputerSolutions/rest/contacts').then(function (response) {
                    $scope.contacts = response.data;
                });
            }])
        .controller('productCtrl', ['$scope', '$http', function ($scope, $http) {
//                $scope.contacts=[];
                $http.get('http://localhost:8080/ComputerSolutions/rest/product').then(function (response) {
                    $scope.products = response.data;
                });
            }]);

