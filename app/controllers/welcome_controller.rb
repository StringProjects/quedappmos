class WelcomeController < ApplicationController
  def index
      @possibles = Possible.all

  end
end
