FactoryBot.define do
  factory :blog do
      title   {'HTMLについて'}
      catch   {'1分でわかります'}
      article {'プログラミング言語です！'}
      category_id { 2 }

      association :user

      after(:build) do |blog|
        blog.image.attach(io: File.open('app/assets/images/head.png'), filename: 'head.png')
      end
  end
end
