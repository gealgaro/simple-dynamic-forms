require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  context "A category must have a title and have many posts" do
    setup do
      @category = Factory(:category)
    end
    should_validate_presence_of :title
    should_have_many :posts
  end
end
