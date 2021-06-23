FactoryBot.define do
    factory :user do
      name              {'test'}
      email                 {'test@test'}
      password              {'000000'}
      password_confirmation {password}
      profile               {'受講生です！'}
    end
  end