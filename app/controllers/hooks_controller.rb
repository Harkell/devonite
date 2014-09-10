class HooksController < ApplicationController
  require 'json'
  protect_from_forgery :except => [ :receiver ]

  def receiver
    if params[:type] == "customer.subscription.created"  # need to verify subscription matches site specific plan
      make_active
    elsif params[:type] == "customer.subscription.deleted"
      make_inactive
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
