FactoryGirl.define do
  factory :player do
    sequence(:email) {|n| "player#{n}@example.com"}
    password { Devise.friendly_token }
    confirmed_at Date.today
    factory :admin_player do
      admin true
    end
  end


end
