class BlogpostsController < ApplicationController

  def index

  end
  def new
 
  end

  def edit

  end

  def create
	@blogPost = Blogpost.create(blog_params)
		respond_to do |format|
    	if @blogPost.save
        	format.html { redirect_to front_blog_path, notice: 'Post was successfully created.' }
        	format.json {  }
    	else
        	format.html { redirect_to front_blog_path, notice: 'Post was not successfully created.'  }
        	format.json {  }
    	end
    end
  end
  def update

  end
  def destroy
 
  end
  private
  def blog_params
    params.require(:blogpost).permit(:title, :content)
  end
end
