class ChargesController < ApplicationController
  layout 'charge'
  before_action :website_config, only: [:create]

  def new
  end

  def create
  customer = Stripe::Customer.create(
   # :customer    => customer.id,
    :email => 'example@devonite.co.uk',    # params[:email]
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

  def prompt
  end

end
