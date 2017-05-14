class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    player_corner_index_path
  end

  # alias of current_player
  def current_user
    current_player
  end
end
