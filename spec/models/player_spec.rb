require 'rails_helper'
require 'cancan/matchers'

RSpec.describe Player, type: :model do
  describe "abilities" do
    subject(:ability) { Ability.new(player) }
    context "when is an admin" do
      let(:player){build(:admin_player)}
      it { should be_able_to(:manage,Server.new)}
    end
  end
end
