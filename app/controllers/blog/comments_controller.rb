class Blog::CommentsController < ApplicationController
  before_action :set_blog_comment, only: [:edit, :update, :destroy]


  # GET /blog/comments/new
  def new
    @blog_post = Blog::Post.find(params[:post_id])
    @blog_comment = @blog_post.comments.build
    @url = new_blog_post_comment_path(@blog_post.id, @blog_post.comments.build)
  end

  # GET /blog/comments/1/edit
  def edit
    @url = polymorphic_path(@blog_comment)
  end

  # POST /blog/comments
  # POST /blog/comments.json
  def create
    @blog_comment = Blog::Comment.new(blog_comment_params)

    respond_to do |format|
      if @blog_comment.save
        format.html { redirect_to @blog_comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @blog_comment }
      else
        format.html { render :new }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/comments/1
  # PATCH/PUT /blog/comments/1.json
  def update
    respond_to do |format|
      if @blog_comment.update(blog_comment_params)
        format.html { redirect_to @blog_comment, notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_comment }
      else
        format.html { render :edit }
        format.json { render json: @blog_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/comments/1
  # DELETE /blog/comments/1.json
  def destroy
    @blog_comment.destroy
    respond_to do |format|
      format.html { redirect_to blog_post_comments_url(@blog_post), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_comment
      @blog_comment = Blog::Comment.find(params[:id])
      @blog_post = @blog_comment.post
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_comment_params
      params.require(:blog_comment).permit(:body, :author, :approved, :post_id)
    end
end
