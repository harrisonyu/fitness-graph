class HomeController < ApplicationController
  before_filter :authenticate_user!, :except => [:public, :help] 
  
  def public
    
  end
  
  def index
  
  end
  
end
