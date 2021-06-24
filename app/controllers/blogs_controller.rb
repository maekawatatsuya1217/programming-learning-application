class BlogsController < ApplicationController

    before_action :authenticate_user!, only: [:new, :edit, :destroy]
    before_action :blog_build, only: [:show, :edit, :update]
    def index
        @blogs = Blog.all
    end

    def new
        @blog = Blog.new
    end

    def create
        blog = Blog.new(blog_params)
        if blog.save
            redirect_to root_path
        else
           render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @blog.update(blog_params)
            redirect_to blog_path(@blog)
        else
            render :edit
        end
    end

    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to root_path
    end

    private

    def blog_params
        params.require(:blog).permit(:title, :catch, :article, :image).merge(user_id: current_user.id)
    end

    def blog_build
        @blog = Blog.find(params[:id])
    end

end