class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to :back, notice: 'Success! Expect a response within the hour.'
    else
      redirect_to support_path, notice: 'Could not send message at this time.'
    end
  end
end