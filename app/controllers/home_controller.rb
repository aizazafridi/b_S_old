class HomeController < ApplicationController
     
  def index
      @actress = Actress.all
  end
end
