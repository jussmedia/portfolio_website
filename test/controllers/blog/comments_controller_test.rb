require "test_helper"

describe Blog::CommentsController do

  let(:blog_comment) { blog_comments :one }

  it "gets new" do
    get :new, post_id: blog_comment.post_id
    assert_response :success
  end

  it "creates blog_comment" do
    assert_difference('Blog::Comment.count') do
      post :create, post_id: blog_comment.post_id, blog_comment: { approved: blog_comment.approved, author: blog_comment.author, body: blog_comment.body }
    end

    assert_redirected_to blog_comment_path(assigns(:blog_comment))
  end

  it "gets edit" do
    get :edit, id: blog_comment
    assert_response :success
  end

  it "updates blog_comment" do
    put :update, id: blog_comment, blog_comment: { approved: blog_comment.approved, author: blog_comment.author, body: blog_comment.body, post_id: blog_comment.post_id }
    assert_redirected_to blog_comment_path(assigns(:blog_comment))
  end

  it "destroys blog_comment" do
    assert_difference('Blog::Comment.count', -1) do
      delete :destroy, id: blog_comment
    end

    assert_redirected_to blog_post_comments_path(blog_comment.post)
  end

end
