class AddPriceToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :price, :decimal, :precision => 8, :scale => 3
    say_with_time 'Adding price to LineItem...' do
      LineItem.all.each do |item|
        item.update_attribute :price, item.product.price unless item.product.nil?
      end
    end
  end
end
