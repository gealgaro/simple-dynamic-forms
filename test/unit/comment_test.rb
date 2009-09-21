require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  context "A comment must have a body and belong to post and to user" do
    setup do
      @comment = Factory(:comment)
    end
    should_validate_presence_of :body
    should_belong_to :user
    should_belong_to :post
  end
end
