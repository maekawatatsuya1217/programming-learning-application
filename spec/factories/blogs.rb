FactoryBot.define do
  factory :blog do
      title   {'HTMLについて'}
      catch   {'1分でわかります'}
      article {'プログラミング言語です！'}

      association :user

      after(:build) do |blog|
        blog.image.attach(io: File.open('app/assets/images/test.png'), filename: 'test.png')
      end
  end
end
