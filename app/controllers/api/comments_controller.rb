class Api::CommentsController < ApplicationController
  def create
    
    # Comment.create(body: comment_params)

    render json: { message: 'Comment has been added' }, status: 201
  end

  # private

  # def comment_params
  #   params.require(:comment).permit(:body)
  # end
end
