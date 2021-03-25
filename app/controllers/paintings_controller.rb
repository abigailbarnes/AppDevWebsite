class PaintingsController < ApplicationController

  def index 
    render({ :template => "paintings_templates/index.html.erb" })
  end

  def show 
    render({ :template => "paintings_templates/show.html.erb" })
  end

end