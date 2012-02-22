# encoding: utf-8
class Sintache < Sinatra::Base
  get "/" do
    mustache :index, :locals => {:name => "distinguished visitor"}
  end
  
  get "/:foo" do |foo|
    mustache :index, :locals => {:name => foo}
  end
end