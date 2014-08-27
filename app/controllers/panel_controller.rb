class PanelController < ApplicationController
	layout 'panel'

  def pageedit
    @content = Content.find(1)
    @blog = Blogpost.new
    @blogPosts = Blogpost.all.reverse
  
  end

  def requestchange
  end

  def statistics
    @creationTime = "2014-08-20 20:21:02 +0100"
    @blogCount = Blogpost.all.count
  end

  def payment

  end

end
