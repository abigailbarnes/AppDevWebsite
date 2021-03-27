class HomeController < ApplicationController

  #skip_before_action(:force_user_sign_in, { :only => [:index] })

  def introduction
    render({ :template => "home_templates/home.html.erb" })
  end


end