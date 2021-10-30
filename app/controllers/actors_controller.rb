class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    
    the_id = params.fetch("ac_id")

    @the_actor = Actor.where({ :id => the_id  }).at(0)

    @character_list = Character.where({ :actor_id => the_id }).all
    
    render({ :template => "actor_templates/show.html.erb"})
  end
end