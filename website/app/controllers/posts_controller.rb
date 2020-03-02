class PostsController < ApplicationController
    before_action :set_post , only: [:show,:edit,:update,:destroy]
    before_action :authenticate_user!
    
    def index
        @posts=Post.paginate(page: params[:page],per_page:5)
    end

    def show
    end

    def new
         @post=Post.new
    end

    def create
        @post=Post.new(post_params)
        if @post.save
            redirect_to @post
        else
            render :new
        end
    end

    def edit
    end

    def update
        @post=Post.find(params[:id])
        if @post.update_attributes(post_params) 
            redirect_to @post
        else
            render :edit
        end
    end

    def destroy
        @post.destroy
        redirect_to posts_path
    end


    private

    def post_params
        params.require(:post).permit(:title, :summary, :body,:image)
    end

    def set_post
        @post=Post.find(params[:id])
    end
end