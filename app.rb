require 'sinatra/base'

class Battle < Sinatra::Base
  run! if app_file == $0
end
