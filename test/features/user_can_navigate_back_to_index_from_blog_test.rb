require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_navigate_from_blog_to_index
    visit '/blog'
    click_on "Back"

    assert_equal 200, page.status_code
    assert_equal '/', current_path
    assert page.has_content?("Welcome")
  end
end
