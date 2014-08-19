class FrontController < ApplicationController
  def index
  	@content = Content.find(1)
  end

  def howitworks
  end

  def blog
  end

  def connect
  end
end
