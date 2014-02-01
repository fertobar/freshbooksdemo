class HomeController < ApplicationController
  def index
    FreshBooks::Base.establish_connection(APP_CONFIG['API_URL'], APP_CONFIG['API_TOKEN'])
    @clients = FreshBooks::Client.list

    #eg update
    #clients = FreshBooks::Client.list
    #client = clients[0]
    #client.first_name = 'Suzy'
    #client.update
  end
end
