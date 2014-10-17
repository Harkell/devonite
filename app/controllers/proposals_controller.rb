class ProposalsController < ApplicationController
  def new
    @proposal = Proposal.new
  end

  def create
    @proposal = Proposal.new(params[:proposal])
    @proposal.request = request
    if @proposal.deliver
      redirect_to :back, notice: 'Success! Expect a response within the hour.'
    else
      redirect_to support_path, notice: 'Could not send message at this time.'
    end
  end
end