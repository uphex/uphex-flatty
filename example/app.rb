require 'sinatra/base'
require 'uphex-flatty'

class TestApp < Sinatra::Base
  register Uphex::Flatty
end

TestApp.run!
