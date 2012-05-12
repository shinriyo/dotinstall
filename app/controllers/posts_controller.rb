# coding: utf-8
class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => '作成した'
    else
      render :action => 'new'
    end
  end
  def edit
    @post = Post.find(params[:id])
  end

  def update

  end
end
