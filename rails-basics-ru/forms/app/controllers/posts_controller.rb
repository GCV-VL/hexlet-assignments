class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(task_params)

    if @post.save
      redirect_to post_url(@post)
    else
      render :new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find params[:id]

    if @post.update(post_params)
      redirect_to post_url(@post)
    else
      render :edit
    end

  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
        redirect_to post_url
    else
      redirect_to post_url(@post)
    end
  end
end
