# test/system/line_items_test.rb

require "application_system_test_case"

class LineItemsTest < ApplicationSystemTestCase
  # All the previous code

  test "Creating a new line item" do
    # All the previous code
    assert_text number_to_currency(@quote.total_price)
  end

  test "Updating a line item" do
    # All the previous code
    assert_text number_to_currency(@quote.total_price)
  end

  test "Destroying a line item" do
    # All the previous code
    assert_text number_to_currency(@quote.total_price)
  end
end
