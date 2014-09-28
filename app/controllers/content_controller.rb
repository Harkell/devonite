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
    			format.html {redirect_to panel_pageedit_path, alert: 'Error updating content.'}
    		end
    	end
	end

	def create
		@content = Content.new(content_params)
	end

	private

	def set_content
		@content = Content.find(params[:id])
	end

	def content_params
		params.require(:content).permit(:section1, :section2, :section3, :section4, :section5, :section6, 
			:section7, :section8, :section9, :section10, :section11, :section12, :section13, :section14, :section15)
	end

end



