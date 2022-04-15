class CommentsController < ApplicationController
  def show
     @comment = Comment.find(params[:id])
  end
  def new
   @comment = Comment.new
  end
  def create 
    @comment = Comment.new(comment_params)
    if @comment.save
       redirect_to @comment
   end
 end
  def destroy
     
    @comment = Comment.find(params[:id])
    @comment.destroy
         redirect_to
     
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :user_id)
    end
end