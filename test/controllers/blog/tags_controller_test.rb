require "test_helper"

describe Blog::TagsController do

  let(:blog_tag) { blog_tags :one }

  it "gets new" do
    get :new
    assert_response :success
  end

  it "creates blog_tag" do
    assert_difference('Blog::Tag.count') do
      post :create, blog_tag: { name: 'test' }
    end

    assert_redirected_to blog_tag_path(assigns(:blog_tag))
  end

  it "shows blog_tag" do
    get :show, id: blog_tag
    assert_response :success
  end

  it "gets edit" do
    get :edit, id: blog_tag
    assert_response :success
  end

  it "updates blog_tag" do
    put :update, id: blog_tag, blog_tag: {  }
    assert_redirected_to blog_tag_path(assigns(:blog_tag))
  end

  it "destroys blog_tag" do
    assert_difference('Blog::Tag.count', -1) do
      delete :destroy, id: blog_tag
    end

    assert_redirected_to blog_tags_path
  end

end
