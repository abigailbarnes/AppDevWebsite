class UsersController < ApplicationController

  #skip_before_action(:force_user_sign_in, { :only => [:index] })

  def index 
    @list_of_users = User.all

    render({ :template => "users_templates/index.html.erb" })
  end

  def show 

    the_id = params.fetch("user_id")

    @the_user = User.where({ :id => the_id }).at(0)

    render({ :template => "users_templates/show.html.erb" })
  end


end