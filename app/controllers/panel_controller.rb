class PanelController < ApplicationController
	layout 'panel'

  def pageedit
    @content = Content.find(1)
    @blogPost = Blogpost.new
    @blogs = Blogpost.all
  
  end

  def requestchange
  end

  def statistics
    @creationTime = "2014-08-20 20:21:02 +0100"
  end

  def payment
  end

end
