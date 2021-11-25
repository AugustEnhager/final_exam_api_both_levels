class Api::CommentsController < ApplicationController
  def create
    render json: { message: 'Comment added' }, status: 201
  end
end
