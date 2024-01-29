class PostsController < ApplicationController
before_action :authenticate_user!
    def index
        @posts = Post.all
    end

    def new
    end

    def create
        @post = current_user.posts.new(post_params)
        if @post.save
            redirect_to root_path
        else
            redirect_to root_path, notice: "Post has not been created"
        end
    end

    private

    def post_params
        params.require(:post).permit(:photo)
    end
end
