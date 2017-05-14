class Server < ApplicationRecord
  enum status:['down','up']
  def linked?
    token.presents?
  end
end
