require "test_helper"

describe Blog::PostsController do

  let(:blog_post) { blog_posts :published }

  describe 'Blog::BaseController' do

    it 'must use the blog layout' do
      get :index
      assert_template layout: :blog
    end

  end

  it "gets index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_posts)
  end

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates blog_post" do
    assert_difference('Blog::Post.count') do
      post :create, blog_post: { author: blog_post.author, body: blog_post.body, published: blog_post.published, title: blog_post.title }
    end

    assert_redirected_to blog_post_path(assigns(:blog_post))
  end

  it "shows blog_post" do
    get :show, id: blog_post
    assert_response :success
  end

  # it "gets edit" do
  #   get :edit, id: blog_post
  #   assert_response :success
  # end

  # it "updates blog_post" do
  #   put :update, id: blog_post, blog_post: { author: blog_post.author, body: blog_post.body, published: blog_post.published, title: blog_post.title }
  #   assert_redirected_to blog_post_path(assigns(:blog_post))
  # end

  # it "destroys blog_post" do
  #   assert_difference('Blog::Post.count', -1) do
  #     delete :destroy, id: blog_post
  #   end
  #
  #   assert_redirected_to blog_posts_path
  # end

end
