class FrontController < ApplicationController
  def index
  	@content = Content.find(1)
  end

  def howitworks
  end

  def blog
      respond_to do |format|
      format.html {render :layout => 'blog'}
    end
    
  end

  def connect
  end
end
