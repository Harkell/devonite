class PanelController < ApplicationController
	layout 'panel'
  before_action :website_config, only: [:requestchange]


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
    @creationTime = "2014-08-20 20:21:02 +0100"
    @blogCount = Blogpost.all.count
    @subscription = Subscription.first.subscribed
  end

  def blog
    @blog = Blogpost.new
    @blogPosts = Blogpost.all.reverse
  end

end
