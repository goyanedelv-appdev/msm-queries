Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  # Static route that could be mapped by a dynamic route must be first in the code (top down peiority)

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index" })
  #get("/actors", {:controller => "actors", :action => "index" })
  #get("/movies", {:controller => "movies", :action => "index" })
  #get("/characters", {:controller => "characters", :action => "index" })

end
