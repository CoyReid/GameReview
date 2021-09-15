class ApplicationController < Sinatra::Base
    
  set :default_content_type, 'application/json'
  
  get "/games" do
    serialize(Game.all)
  end

  private
  
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