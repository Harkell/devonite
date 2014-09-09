class HooksController < ApplicationController
  require 'json'
  protect_from_forgery :except => [ :receiver ]
  #Stripe.api_key = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  #Stripe.api_key = Rails.configuration.stripe[:secret_key]

def receiver

  data_json = JSON.parse request.body.read

  p data_json['data']['object']['customer']

#    if data_json[:type] == "customer.subscription.created"
#      make_active(data_event)
#    end
#
#   if data_json[:type] == "charge.failed"
#      make_inactive(data_event)
#    end
#
#    # Return a 200 status code
    #format.json { render json: final_obj, status: :ok }
#    format.json  { render :json, status: :ok }
#
end

  # You need this line or you'll get CSRF/token errors from Rails (because this is a post)
  #skip_before_filter :verify_authenticity_token

#  def receiver
#    # I like to save all my webhook events (just in case)
#    # and parse them in the background
#    # If you want to do that, do this
#    event = Event.new({raw_body: request.body.read})
#    event.save
#    # OR If you'd rather just parse and act 
#    # Do something like this
#    raw_body = request.body.read
#    json = JSON.parse raw_body
#   event_type = json['type'] # You most likely need the event type
#    customer_id = json['data']['object']['customer'] # Customer ID is the other main bit of info you need

    # Do the rest of your business here

    # Stripe just needs a 200/ok in return
   # render nothing: true
  #end

#    def make_active(data_event)
#      @subscription = Subscription.first
#      if @subscription.subscribed == false
#        @subscription.subscribed = true
#       @subscription.save!
#      end
#  end

  #  def make_inactive(data_event)
  #    @profile = Profile.find(User.find_by_stripe_customer_token(data['data']['object']['customer']).profile)
  #    if @profile.payment_received == true
  #      @profile.payment_received = false
  #      @profile.save!
  #    end
  #   end
  # end
#  def make_inactive(data_event)
#    @subscription = Subscription.first
#    if @subscription.subscribed == true
#      @subscription.subscribed = false
#      @subscription.save!
#    end
#  end
end
