require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

def setup
  @category_one = Category.create(name: "sports")
  @category_two = Category.create(name: "health")
  @category_three = Category.create(name: "fitness")
end

test "should show categories listing" do
  get categories_path
  assert_template 'categories/index'
  assert_select 'a[href=?]', category_path(@category_one), text: @category_one.name
  assert_select 'a[href=?]', category_path(@category_two), text: @category_two.name
  assert_select 'a[href=?]', category_path(@category_three), text: @category_three.name
end

end
