FactoryGirl.define do
  factory :link_token do
    token Devise.friendly_token
  end
end
