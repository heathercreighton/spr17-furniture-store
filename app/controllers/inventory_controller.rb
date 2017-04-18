class InventoryController < ApplicationController
  def all_products
  	@products = Product.all
  end

  def one_product
  	@product = Product.find(2)
  end

  def by_category
		@products = Product.where(category: "bedroom")

		@all_products = Product.order(:category)
  end
end
