class HomeController < ApplicationController
  def index
    @rituals = Ritual.all
  end
end
