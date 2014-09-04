class ChargesController < ApplicationController
layout 'charge'

def new
end

def create
  # Amount in pence?
  #@amount = 5000

  customer = Stripe::Customer.create(
    :email => 'example@stripe.com',
    :card  => params[:stripeToken],
    :plan  => 'dvnt-test'
  )

 # charge = Stripe::Charge.create(
 #  :customer    => customer.id,
 #   :amount      => @amount,
 #   :description => 'Rails Stripe customer',
 #   :currency    => 'gbp'
 # )
  Stripe::Plan.retrieve("dvnt-test")

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to charges_path
end

end
