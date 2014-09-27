class BlogpostsController < ApplicationController
  before_action :post_find, only: [:destroy, :edit, :show, :update]
  layout 'blog'

  def index

  end
  def show
 
  end

  def edit
    @blogEdit = @blogPost
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
    if @blogPost.update(blog_params)
      redirect_to front_blog_path, notice: 'Post was successfully updated.'
    else
      redirect_to front_blog_path, notice: 'Post was not successfully updated.'
    end
  end
  def destroy
    if @blogPost.destroy
      redirect_to front_blog_path, notice: 'Post was successfully deleted.'
    else
      redirect_to front_blog_path, notice: 'Post was not successfully deleted.'
    end
  end
  private
  def post_find
    @blogPost = Blogpost.find(params[:id])
  end
  def blog_params
    params.require(:blogpost).permit(:title, :content, :image)
  end
end
