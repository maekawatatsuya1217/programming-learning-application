FactoryBot.define do
  factory :form do
    day         {'2021-1-1'}
    time        {'1:00'}
    good        {'集中できたこと'}
    bad         {'集中できなかったこと'}
    improvement {'集中できる環境を作る'}

    association :user

    after(:build) do |form|
      form.image.attach(io: File.open('app/assets/images/head.png'), filename: 'head.png')
    end
  end
end
