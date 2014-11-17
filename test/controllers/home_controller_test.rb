require "test_helper"

describe HomeController do

  describe '#BaseController' do
    it 'should render the correct template' do
      get :index
      assert_template :index
      assert_template layout: "layouts/application"
    end

    it 'should contain a header partial' do
      get :index
      assert_template :index
      assert_template partial: "_header"
    end

    it 'should contain a footer partial' do
      get :index
      assert_template :index
      assert_template partial: "_footer"
    end

    it 'should contain a messages partial' do
      get :index
      assert_template :index
      assert_template partial: "_messages"
    end
  end
end
