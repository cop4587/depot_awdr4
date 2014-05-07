require 'test_helper'

class CartTest < ActiveSupport::TestCase

  setup do
    @cart = Cart.create
  end

  test 'add products' do
    product = products(:ruby)
    @cart.add_product product.id
    assert_equal @cart.line_items.count, 1
    @cart.add_product product.id
    assert_equal @cart.line_items.count, 2
  end
end
