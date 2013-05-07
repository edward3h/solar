require 'rubygems'
require 'bundler'

Bundler.require
require 'sinatra/base'
require 'yaml'

class SolarApp < Sinatra::Base

  before do
    DB = Sequel.connect(YAML.load_file('app_config.yml')['database'])
  end

  get '/' do
    'Hello solar world!'
  end
end
