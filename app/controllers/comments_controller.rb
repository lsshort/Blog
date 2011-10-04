class CommentsController < ApplicationController
  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # POST /comments
  # POST /comments.json
  def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.create!(params[:comment])
    respond_to do |format|
        format.html { redirect_to @post }
	format.js
    end
  end

end
