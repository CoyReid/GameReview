class CommentsController < ApplicationController
 
  post '/comments' do
    Comment.create(comment_params).to_json(include: :user)
  end

  delete '/comments/:id' do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json()
  end

  private

  def comment_params
    allowed_params = %w(content user_id review_id)
    params.select {|param,value| allowed_params.include?(param)}
  end

end