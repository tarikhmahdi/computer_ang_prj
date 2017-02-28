var app1 = angular.module('mainApp', ['ngRoute'])

        .config(['$routeProvider', function ($routeProvider) {
                $routeProvider.
                        when('/userMain', {
                            templateUrl: 'userMain.html',
                            controller: 'loginCtrl'
                        }).
                        when('/dashboard', {
                            templateUrl: 'userDashboard.html',
                            controller: 'loginCtrl'
                        }).
                        otherwise({
                            redirectTo: '/userMain'
                        });
            }]);

app1.controller('loginCtrl', ['$scope', '$location', function ($scope, $location) {
        $scope.submit = function () {
            var uname = $scope.username;
            var password = $scope.password;
            if ($scope.username == 'admin' && $scope.password == 'admin') {
//            $location.path('/dashboard');
                redirectTo:'/dashboard';
            } else {
                redirectTo:'/userMain';
            }
        };
    }]);