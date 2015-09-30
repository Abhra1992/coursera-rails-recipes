class Recipe < ActiveRecord::Base
  include HTTParty
  key_value = ENV['FOOD2FORK_KEY']
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"

  def self.for keyword
    options = { key: key_value, q: keyword }
    self.class.get("/search", options)
  end
end