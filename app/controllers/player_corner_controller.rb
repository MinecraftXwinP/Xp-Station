class PlayerCornerController < ApplicationController
  def index
    @player = current_player
  end
end
