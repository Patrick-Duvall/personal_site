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
  def test_user_can_visit_blog_post_two
    visit '/blog'
    click_on "Post Two"
    assert_equal 200, page.status_code
    assert_equal '/blogs/2', current_path
    assert page.has_content?("Post Two")
    assert page.has_link?("Back")
  end
  def test_user_can_visit_blog_post_three
    visit '/blog'
    click_on "Post Three"
    assert_equal 200, page.status_code
    assert_equal '/blogs/3', current_path
    assert page.has_content?("Post Three")
    assert page.has_link?("Back")
  end
end
