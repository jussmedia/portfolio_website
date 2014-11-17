require "test_helper"

describe ApplicationHelper do

  describe '#bootstrap_class_for' do

    it 'should return correct styles for bootstrap' do
      { :success => 'alert-success',
        :error => 'alert-danger',
        :alert => 'alert-warning',
        :notice => 'alert-info' }.each do |type, css_class|
        (bootstrap_class_for type).must_equal css_class
      end
    end
  end
end
