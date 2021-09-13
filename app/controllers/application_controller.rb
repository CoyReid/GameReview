class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/data" do
      serialize(Game.all)
    end
  
    def serialize(objects)
      objects.to_json(
        include: {
          reviews: {
            include: {
              comments: {include: :user}
            }
          }
        }
      )
    end

  end