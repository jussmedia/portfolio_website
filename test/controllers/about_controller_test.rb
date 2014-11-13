require "test_helper"

describe AboutController do
  it "should get index" do
    get :index
    assert_response :success
  end

end
