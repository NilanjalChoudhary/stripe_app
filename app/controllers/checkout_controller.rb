class CheckoutController < ApplicationController

  def create
    product = Product.find(params[:id])
    @session = Stripe::Checkout::Session.create({
    payment_method_types: ['card'],
    line_items: [{
        name: product.name,
        amount: product.price,
        currency: "usd",
        quantity: 1,
    }],
    mode: 'payment',
    success_url: root_path,
    cancel_url: root_path, })
  end

end