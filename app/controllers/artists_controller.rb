class ArtistsController < ApplicationController

  def index 
    @list_of_artists = Artist.all

    render({ :template => "artists_templates/index.html.erb" })
  end

  def show 
    render({ :template => "artists_templates/show.html.erb" })
  end

end