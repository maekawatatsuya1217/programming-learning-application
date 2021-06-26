FactoryBot.define do
  factory :event do
    title   {'タイトル'}
    content   {'内容'}
    start_time { Time.now }
    id { 1 }
    created_at { Time.now }
    updated_at { Time.now }

    association :user
  end
end
