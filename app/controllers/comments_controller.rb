class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  before_filter :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :set_product, only: [:create]
  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    respond_with(@comment)
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @product.comments.new(params[:comment])
    @comment.save
    redirect_to @comment.product
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment.update_attributes(params[:comment])
    respond_with(@comment)
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_with(@comment)
  end
  
  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_product
      @product = Product.find(params[:product_id])
    end
end
