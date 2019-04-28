require './test/test_helper'

class LinkTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'
    click_on "Blog"

    assert_equal 200, page.status_code
    assert_equal '/blog', current_path
    assert page.has_content?("My Blog")
    assert page.has_link?("Post One")
    assert page.has_link?("Post Two")
    assert page.has_link?("Post Three")
  end
end
