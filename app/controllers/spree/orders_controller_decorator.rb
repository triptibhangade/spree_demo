module Spree
  OrdersController.class_eval do
    def update
      binding.pry
      @variant = Spree::Variant.find(params[:variant_id]) if params[:variant_id]
      if Cart::Update.call(order: @order, params: order_params).success?
        respond_with(@order) do |format|
          format.html do
            if params.key?(:checkout)
              @order.next if @order.cart?
              redirect_to checkout_state_path(@order.checkout_steps.first)
            else
              redirect_to cart_path
            end
          end
        end
      else
        respond_with(@order)
      end
    end
  end
end
