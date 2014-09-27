class FrontController < ApplicationController
  impressionist actions: [:index], unique: [:session_hash]

  def index
  	@content = Content.find(1)
  end

  def howitworks
  end

  def blog
    @blogPosts = Blogpost.all.reverse.drop(1)
    @latestPost = Blogpost.last
    respond_to do |format|
      format.html {render :layout => 'blog'}
    end
  end

  def getstarted
    @proposal = Proposal.new
    respond_to do |format|
      format.html {render :layout => 'getstarted'}
    end
  end

  def support
    @contact = Contact.new
    respond_to do |format|
      format.html {render :layout => 'support'}
    end
  end
end
