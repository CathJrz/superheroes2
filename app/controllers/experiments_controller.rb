class ExperimentsController < ApplicationController
  def page1
  end

  def page2
      # render :layout => 'bootstrap'
      render layout: "bootstrap"
  end

  def page3
  end
end
