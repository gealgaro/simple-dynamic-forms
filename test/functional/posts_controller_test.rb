require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  context "A GET to #index when not logged in" do
    setup do
      get :index
    end
    should_render_template  :index
  end
end
