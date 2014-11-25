class Blog::TagsController < Blog::BaseController
  before_action :set_blog_tag, only: [:show, :edit, :update, :destroy]

  # GET /blog/tags
  # GET /blog/tags.json
  # def index
  #   @blog_tags = Blog::Tag.all
  # end

  # GET /blog/tags/1
  # GET /blog/tags/1.json
  def show
    @blog_posts = @blog_tag.posts.all.page(params[:page])
  end

  # GET /blog/tags/new
  def new
    @blog_tag = Blog::Tag.new
  end

  # GET /blog/tags/1/edit
  def edit
  end

  # POST /blog/tags
  # POST /blog/tags.json
  def create
    @blog_tag = Blog::Tag.new(blog_tag_params)

    respond_to do |format|
      if @blog_tag.save
        format.html { redirect_to @blog_tag, notice: 'Tag was successfully created.' }
        format.json { render :show, status: :created, location: @blog_tag }
      else
        format.html { render :new }
        format.json { render json: @blog_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog/tags/1
  # PATCH/PUT /blog/tags/1.json
  def update
    respond_to do |format|
      if @blog_tag.update(blog_tag_params)
        format.html { redirect_to @blog_tag, notice: 'Tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_tag }
      else
        format.html { render :edit }
        format.json { render json: @blog_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog/tags/1
  # DELETE /blog/tags/1.json
  def destroy
    @blog_tag.destroy
    respond_to do |format|
      format.html { redirect_to blog_tags_url, notice: 'Tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_tag
      @blog_tag = Blog::Tag.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_tag_params
      params[:blog_tag].permit(:name)
    end
end
