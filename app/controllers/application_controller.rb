class ApplicationController < Sinatra::Base
    
  set :default_content_type, 'application/json'
  
  get "/games" do
    serialize(Game.all)
  end

  get "/games/:id" do
    serialize(Game.find(params[:id]))
  end

  private
  
  def serialize(objects)
    objects.to_json(
      methods: :avg,
      include: {
        reviews: {
          include: [
            :user, 
            comments: {include: :user}
          ]
        }
      }
    )
  end

end


