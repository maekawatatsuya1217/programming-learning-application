FactoryBot.define do
    factory :user do
      name                  {'テスト'}
      email                 {Faker::Internet.free_email}
      password              {Faker::Internet.password(min_length: 6)}
      profile               {'オリジナルアプリ作成中です。'}
    end
  end