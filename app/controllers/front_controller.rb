class FrontController < ApplicationController
  impressionist actions: [:index], unique: [:session_hash]

  def index
  	@content = Content.find(1)
  end

  def howitworks
    @content2 = Content.find(2)
  end

  def blog
    #@content3 = Content.find(3)
    @blogPosts = Blogpost.all.reverse.drop(1)
    @latestPost = Blogpost.last

    if @latestPost.blank? == false
      @blogPicture = Blogpost.last.image
    end
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
    @content4 = Content.find(4)
    @contact = Contact.new
    respond_to do |format|
      format.html {render :layout => 'support'}
    end
  end
end
