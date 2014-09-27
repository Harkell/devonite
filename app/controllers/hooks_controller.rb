class HooksController < ApplicationController
  require 'json'
  protect_from_forgery :except => [ :receiver ]

    data_json = JSON.parse request.body.read

    p data_json['data']['object']['lines']['data']['plan']

  def receiver
    if data_json[:id] == "dvnt-test" # checks for site-specific webhooks
      if params[:type] == "customer.subscription.created"  # need to verify subscription matches site specific plan
        make_active
      elsif params[:type] == "customer.subscription.deleted"
        make_inactive
      end
    end
  end


  def make_active
    @subscription = Subscription.first
    if @subscription.subscribed == false
      @subscription.update(:subscribed => true)
    end
  end
  def make_inactive
    @subscription = Subscription.first
    if @subscription.subscribed == true
      @subscription.update(:subscribed => false)
    end
  end
  
end
