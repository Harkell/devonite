class ProposalsController < ApplicationController
  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(params[:proposal])
    @proposal.request = request
    if @proposal.deliver
      redirect_to :back, notice: 'Thankyou for your message.  We will hit you up soon breh.'
    else
      redirect_to front_support_path, notice: 'Could not send message at this time.'
    end
  end
end