class PlayerCornerController < ApplicationController
  before_action :authenticate_player!
  def index
    @player = current_player
  end
end
