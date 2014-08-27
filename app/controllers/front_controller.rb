class FrontController < ApplicationController
  def index
  	@content = Content.find(1)
  end

  def howitworks
  end

  def blog
    @blogPosts = Blogpost.all.reverse

      respond_to do |format|
      format.html {render :layout => 'blog'}
    end
  end

  def support
  end
end
