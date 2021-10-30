Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index" })
  #get("/actors", {:controller => "actors", :action => "index" })
  #get("/movies", {:controller => "movies", :action => "index" })
  #get("/characters", {:controller => "characters", :action => "index" })

end
