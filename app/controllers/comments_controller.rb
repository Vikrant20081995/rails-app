class CommentsController < ApplicationController
def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    binding.pry
    redirect_to post_path(@post)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:comment_text)
    end
end
