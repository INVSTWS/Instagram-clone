class PostsController < ApplicationController
before_action :authenticate_user!
# before_action :set_post, only: [:edit]
    def index
        @posts = Post.all
    end


    def edit
        @post = Post.find(params[:id]) # ищем пост который надо отобразить
        render @post.status
    end

    def create
        @post = current_user.posts.new(post_params)
        if @post.save
            redirect_to edit_post_path(@post)
        else
            redirect_to root_path, notice: "Post has not been created"
        end
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to edit_post_path(@post)
    end
    private


    # def set_post
    #     @post = Post.find(params[:id])
    # end

    def post_params
        params.require(:post).permit(:photo, :x_offset, :y_offset, :width, :height, :status)
    end
end
