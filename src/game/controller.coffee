angular.module '%module%.game'
  .controller 'GameController', ($scope, $routeParams, gameStamps) ->
    $scope.twitchId = parseInt $routeParams.twitchId
    $scope.gameStamps = gameStamps.results
    $scope.game = gameStamps.results[0].game