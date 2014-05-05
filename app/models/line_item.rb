# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  product_id :integer
#  cart_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  quantity   :integer          default(1)
#  order_id   :integer
#
# Indexes
#
#  index_line_items_on_order_id  (order_id)
#

class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
