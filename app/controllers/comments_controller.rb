class CommentsController < ApplicationController
 
  post '/comments' do
    Comment.create(comment_params).to_json(include: :user)
  end

  private

  def comment_params
    allowed_params = %w(content user_id review_id)
    params.select {|param,value| allowed_params.include?(param)}
  end

end