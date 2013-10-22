# require 'elasticsearch'

class Procedure < ActiveRecord::Base
  attr_accessible :location, :name
  
#  client = Elasticsearch::Client.new log: true

# client.index  index: 'procedureindex', type: 'procedure_type', id: 'psych', body: { name: "replacement", location: "canada" }

# This should be in the controller
#   def self.search(my_query)
#     client.search body: { query: { match: { title: my_query } } }
#   end

end
