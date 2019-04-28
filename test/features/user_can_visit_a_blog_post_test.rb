require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_visit_blog_post_one
    visit '/blog'
    click_on "Post One"
    assert_equal 200, page.status_code
    assert_equal '/blogs/1', current_path
    assert page.has_content?("Post One")
    assert page.has_link?("Back")
  end
end
