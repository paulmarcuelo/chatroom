class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :LoginRequire, except: []

  def home
    @messages = Message.all
    @message = Message.new
  end

  private
  def LoginRequire
    if current_user
      return true
    else 
      return false
    end
  end
end
