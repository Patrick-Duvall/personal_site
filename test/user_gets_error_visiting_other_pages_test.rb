require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_gets_error_visiting_wrong_page
    visit '/cats'
    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end
end
