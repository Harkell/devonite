class PanelController < ApplicationController
	layout 'panel'
  before_action :website_config, only: [:requestchange]
  before_action :redirect_unsubscribed, only: [:pageedit, :requestchange, :statistics, :blog]


  def pageedit
    @content = Content.find(1)
    #@content2 = Content.find(2)  
  end

  def requestchange
    @request = Request.new
    @userEmail = current_user.email
    #@contact.inbox = "comely@hotmail.co.uk"
  end

  def statistics
    @creationTime = "2014-09-20 20:21:02 +0100"
    @blogCount = Blogpost.all.count
    @subscription = Subscription.first.subscribed
    @viewscount = Impression.where(controller_name: "front").count
    @viewstoday = Impression.where("created_at >= ?", Date.today).count
  end 

  def blog
    @blog = Blogpost.new
    @blogPosts = Blogpost.all.reverse
  end

  private

  def redirect_unsubscribed
    if Subscription.first.subscribed == false
      redirect_to subscription_path
    end
  end


end
