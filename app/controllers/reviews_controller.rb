class ReviewsController < ApplicationController
 
  post '/reviews' do
    Review.create(review_params).to_json(
      include: {
        comments: {include: :user}
      }
    )
  end

  private

  def review_params
    allowed_params = %w(score time content user_id game_id)
    params.select {|param,value| allowed_params.include?(param)}
  end

end