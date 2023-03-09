class HomeController < ApplicationController
  def index
    @rituals = Ritual.all
    @ritual = Ritual.new
  end

  def edit
  end
end
