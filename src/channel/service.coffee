angular.module '%module%.channel'
.factory 'twitchChannel', ($resource) ->
  $resource 'https://api.parse.com/1/', {},
    getStreamStamps:
      method: 'GET'
      url: 'https://api.parse.com/1/classes/StreamStamp'
      params:
        include: 'channel'
        where:
          channel:
            $inQuery:
              where:
                # twitchId: $scope.twitchId
                twitchId: 23161357
              className: 'Channel'
      headers:
        'X-Parse-Application-Id': 'FjV0J1GNH4gNUjwPOPREt5vPmxrn3Ht6vyLaaQ1R'
        'X-Parse-REST-API-Key': 'Tr7Sipvulj7XDT2jx5DpvqwV0nLeEC9BnfIGgpvm'
