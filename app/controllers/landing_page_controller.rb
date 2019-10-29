class LandingPageController < ApplicationController

  def welcome
     @welcome = params[:first_name]
    puts get = 'welcome/:first_name' do
  erb :welcome

    end
  
  end
end
