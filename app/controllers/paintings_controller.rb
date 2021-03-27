class PaintingsController < ApplicationController

  skip_before_action(:force_user_sign_in, { :only => [:index] })

  def index 
    @list_of_paintings = Painting.all
    render({ :template => "paintings_templates/index.html.erb" })
  end

  def show 
    
    the_id = params.fetch("painting_id")

    @the_painting = Painting.where({ :id => the_id }).at(0)

    artist_id = @the_painting.artist_id

    @the_artist = Artist.where({ :id => artist_id }).at(0)

    render({ :template => "paintings_templates/show.html.erb" })
  end

end