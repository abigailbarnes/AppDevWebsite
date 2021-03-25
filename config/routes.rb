Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "introduction" })

  get("/paintings", { :controller => "paintings", :action => "index" })
  get("/paintings/:path_paintings", { :controller => "paintings", :action => "show" })

  get("/artists", { :controller => "artists", :action => "index" })
  get("/artists/:path_artists", { :controller => "artists", :action => "show" })


end
