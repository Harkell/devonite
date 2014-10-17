class RequestsController < ApplicationController
  def new
    @request = Contact.new
  end

  def create
    @request = Request.new(params[:request])
    @request.request = request
    if @request.deliver
      redirect_to :back, notice: 'Success! Expect a response within the hour.'
    else
      redirect_to support_path, notice: 'Could not send message at this time.'
    end
  end
end