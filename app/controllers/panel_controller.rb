class PanelController < ApplicationController
	layout 'panel'

  def pageedit
    @content = Content.find(1)

  end

  def requestchange
  end

  def statistics
  end

  def payment
  end
end
