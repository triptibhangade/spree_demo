Spree::Api::V2::Storefront::CartController.class_eval do
  before_action :cart_count, only: [:add_item]
  def add_item   
    variant = Spree::Variant.find(params[:variant_id])

    spree_authorize! :update, spree_current_order, order_token
    spree_authorize! :show, variant

    result = add_item_service.call(
      order: spree_current_order,
      variant: variant,
      quantity: params[:quantity],
      options: params[:options]
    )

    render_order(result)
  end

  def cart_count
    current_spree_user.orders.each do |order|
        binding.pry
      if order.id == spree_current_order.id
        order.line_items.first.cart_count = order.line_items.first.cart_count.to_i + 1  if order.line_items 
      end
    end
  end
end