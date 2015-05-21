class CommentsController < ApplicationController
  def comments
    @allComments = Comment.all
  end

  def create
     @newComment = Product.find(params[:productId]).comments.new(comment:params[:comment])
     if(@newComment.save)
      redirect_to("/products/#{params[:productId]}")
    else
      flash[:errors] = @newComment.errors.full_messages
      redirect_to("/products/#{params[:productId]}")
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  end
end

 