class CommentsController < ApplicationController
  def create
    @comment=Comment.new(comment_params)
    @comment.freepost_id=params["freepost_id"]
    @comment.save
    redirect_to :back
  end
  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    
    redirect_to :back
  end
  def comment_params
    params.require(:comment).permit(:content)
  end
end
