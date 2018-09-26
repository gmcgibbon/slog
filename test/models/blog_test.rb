require 'test_helper'

class BlogTest < ActiveSupport::TestCase

  setup do
    @route = routes(:coding_horror)
  end

  test "the truth" do
    assert @route.on_shard { |r| r.blog.posts }
  end
end
