class HooksController < ApplicationController
  require 'json'

  #Stripe.api_key = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  #Stripe.api_key = Rails.configuration.stripe[:secret_key]
  Stripe.api_key = "sk_test_rW3V1vCWvRna6fLZHWWkQT5q"

  def receiver

    data_json = JSON.parse request.body.read

    p data_json['data']['object']['customer']

    if data_json[:type] == "customer.subscription.created"
      make_active(data_event)
    end

    if data_json[:type] == "customer.subscription.deleted"
      make_inactive(data_event)
    end

    # Return a 200 status code
    #render :text => '{}', :status => :ok

  end



  def make_active(data_event)
    @subscription = Subscription.first
    if @subscription.subscribed == false
      @subscription.subscribed = true
      @subscription.save!
    end
  end

  #  def make_inactive(data_event)
  #    @profile = Profile.find(User.find_by_stripe_customer_token(data['data']['object']['customer']).profile)
  #    if @profile.payment_received == true
  #      @profile.payment_received = false
  #      @profile.save!
  #    end
  #   end
  # end
  def make_inactive(data_event)
    @subscription = Subscription.first
    if @subscription.subscribed == true
      @subscription.subscribed = false
      @subscription.save!
    end
  end
end
