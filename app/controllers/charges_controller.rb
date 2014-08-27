class ChargesController < ApplicationController
layout 'panel'

def new
end

def create
  # Amount in pence?
  @amount = 5000

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'gbp'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end

end
