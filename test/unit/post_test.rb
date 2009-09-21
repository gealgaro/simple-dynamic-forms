require 'test_helper'

class PostTest < ActiveSupport::TestCase
  context "A post must have a title and body, belong to a category and have many comments" do
    setup do
      @post = Factory(:post)
    end
    should_validate_presence_of :title
    should_validate_presence_of :body
    should_belong_to :user
    should_belong_to :category
    should_have_many :comments
  end
end
