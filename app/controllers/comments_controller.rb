class CommentsController < ApplicationController

    before_action :authenticate_user!, only: [:create]

    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            redirect_to "/blogs/#{@comment.blog.id}"
        else
            @blog = @comment.blog
            @comments = @blog.comments.includes(:user).order("created_at DESC")
            render 'blogs/show'
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, blog_id: params[:blog_id])
    end
    
end
