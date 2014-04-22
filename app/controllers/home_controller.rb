class HomeController < ApplicationController

  layout 'application'

  def index
   # @randomwords = Word.order("RANDOM()").limit(1)
   @randomwords = Word.random
  end


end
