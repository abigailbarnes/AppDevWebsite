class ArtistsController < ApplicationController

  skip_before_action(:force_user_sign_in, { :only => [:index] })

  def index 
    @list_of_artists = Artist.all

    render({ :template => "artists_templates/index.html.erb" })
  end

  def show 

    the_id = params.fetch("artist_id")

    @the_artist = Artist.where({ :id => the_id }).at(0)


    @pieces = Painting.where({ :artist_id => @the_artist.id })


    render({ :template => "artists_templates/show.html.erb" })
  end

end