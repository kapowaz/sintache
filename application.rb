require 'rubygems'
require 'sinatra/base'
require 'sinatra/mustache'

class Sintache < Sinatra::Base
    
  set :views,                   File.dirname(__FILE__) + '/public/templates'
  set :public,                  File.dirname(__FILE__) + '/public'
  
end

Dir[File.join(File.dirname(__FILE__), 'app/**/*.rb')].sort.each { |f| require f }