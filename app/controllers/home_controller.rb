class HomeController < ApplicationController
  def index
    @rituals = Ritual.all
    @ritual = Ritual.new
  end
end
