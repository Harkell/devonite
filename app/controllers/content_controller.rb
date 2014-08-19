class ContentController < ApplicationController
	before_action :set_content, only: [:index, :update, :create]

	def index

	end

	def update
	    if @content.update(content_params) 
				respond_to do |format|
        	format.html { redirect_to panel_pageedit_path, notice: 'Content was updated.' }
    		end
    	else
    		respond_to do |format|
    			format.html {redirect_to panel_pageedit_path, notice: 'Error updating content.'}
    		end
    	end
	end

	def create
		@content = Content.new(content_params)
	end

	private

	def set_content
		@content = Content.find(1)
	end

	def content_params
		params.require(:content).permit(:header1, :header2, :section1header1, :section1paragraph1, :section2header1, :section2paragraph1, 
			:section2paragraph2, :section3header1, :section3paragraph1)
	end

end



