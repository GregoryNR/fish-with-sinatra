require 'sinatra/base'

class FishApp < Sinatra::Base

    get "/" do
      erb :root
    end

      get "/nemo" do
        erb :Nemo
      end

      get "/jaws" do
        erb :Jaws
      end

      get "/orca" do
        erb :Orca
      end



end



