class HomeController < ApplicationController
  def introduction
    render({ :template => "home_templates/home.html.erb" })
  end


end