class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to @comment.post
    else
      render :new
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(
      :content,
      :user_id,
      :post_id,
      :parent_id,
      :ancestry
    )
  end
end
