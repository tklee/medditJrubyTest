App.factory 'Procedure', ['$resource', ($resource) ->
  console.log '@id called within Angular service is ' + '@id'
  $resource 'http://:url/:action',
    url: 'localhost:9200/procedureindex/cosmetic'
    action: '_mget'
  ,
    post:
      method: 'POST'
      data:
        [ docs: 
          _id: '@id'
        ]
]


#    url: 'localhost:9200/procedureindex/cosmetic'
#    action: '_search?'
