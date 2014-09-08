class RequestsController < ApplicationController
  def new
    @request = Contact.new
  end

  def create
    @request = Request.new(params[:request])
    @request.request = request
    if @request.deliver
      redirect_to :back, notice: 'Thankyou for your message.  We will hit you up soon breh.'
    else
      redirect_to front_support_path, notice: 'Could not send message at this time.'
    end
  end
end